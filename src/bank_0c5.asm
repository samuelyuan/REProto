SECTION "ROM Bank $0c5", ROMX[$4000], BANK[$c5]

bank0c5_4000:
    dw $40e8
    dw $4136
    dw $41bb
    dw $41fe
    dw $4257
    dw $42e7
    dw $4340
    dw $4399
    dw $43bb
    dw $4409
    dw $4436
    dw $4479
    dw $44c7
    dw $4520
    dw $4563
    dw $45b1
    dw $45c8
    dw $4600
    dw $4622
    dw $4691
    dw $46b3
    dw $46e0
    dw $46ec
    dw $4745
    dw $477d
    dw $47aa
    dw $47c1
    dw $47f9
    dw $483c
    dw $4874
    dw $48a1
    dw $48ce
    dw $48fb
    dw $4954
    dw $4981
    dw $49ae
    dw $4a80
    dw $4ad9
    dw $4b27
    dw $4b54
    dw $4ba2
    dw $4bf0
    dw $4c49
    dw $4c60
    dw $4c77
    dw $4ca4
    dw $4cd1
    dw $4cfe
    dw $4d15
    dw $4d58
    dw $4da6
    dw $4dd3
    dw $4e00
    dw $4e22
    dw $4e70
    dw $4ef5
    dw $4f22
    dw $4f65
    dw $4f7c
    dw $4fbf
    dw $4fec
    dw $500e
    dw $503b
    dw $5073
    dw $50a0
    dw $50e3
    dw $513c
    dw $513d
    dw $516a
    dw $51a2
    dw $51c4
    dw $51e6
    dw $524a
    dw $5298
    dw $52ba
    dw $52f2
    dw $531f
    dw $5357
    dw $5384
    dw $53a6
    dw $53de
    dw $5437
    dw $546f
    dw $54a7
    dw $550b
    dw $5559
    dw $5570
    dw $5592
    dw $55eb
    dw $5602
    dw $562f
    dw $5651
    dw $5673
    dw $56cc
    dw $5704
    dw $5768
    dw $578a
    dw $57e3
    dw $581b
    dw $5853
    dw $58ac
    dw $58c3
    dw $591c
    dw $591d
    dw $596b
    dw $598d
    dw $59a4
    dw $59c6
    dw $59c7
    dw $59de
    dw $59ea
    dw $5a17
    dw $5a86
    dw $5aea
    dw $5b17
    dw $5b39

; For door transitions (opcode < 0x90)
; byte 0 is door id
; bytes 1-2 is new room number
; bytes 3-4 is address pointing to next room
; bytes 5-6 is new player y
; bytes 7-8 is new player x
; bytes 9-10 is new rotation

; For opcode 0x98, generate zombie
; byte 0 is 0x98
; bytes 1-2 is entity id
; bytes 3-4 is y position copied to offset 0x11 and 0x12 starting from 0xc320
; bytes 5-6 is x position copied to offset 0x13 and 0x14 starting from 0xc320
Room00TransitionTable:: ; 0x40e8
    db $40
    dw $0000, $4136, $03d0, $0040, $0018
    db $49
    dw $0000, $4257, $fc30, $fec0, $0008
    db $12
    dw $0000, $45d3, $fc30, $00c0, $0008
    db $7c
    dw $0000, $4895, $0000, $ffc0, $0010
    db $a9
    dw $0000, $0038, $0108, $ffc0, $0010
    db $a8
    dw $0001, $001f, $fe50, $fe80, $0010
    db $90
    dw $0000, $0000, $0108, $ffc0, $0010
    db $ff
    
Room01TransitionTable:: ; 0x4136
    db $40
    dw $0001, $40e8, $fc70, $0000, $0008
    db $02
    dw $0001, $42e7, $02c0, $0150, $0010
    db $e2
    dw $00f2, $0050, $0150, $0080, $0000
    db $e2
    dw $00f3, $00d8, $0150, $0080, $0000
    db $a9
    dw $0002, $001d, $0390, $0000, $0018
    db $a9
    dw $0003, $0044, $0050, $0168, $0010
    db $a8
    dw $0004, $003b, $0128, $ff38, $0000
    db $a9
    dw $00f0, $0000, $0048, $0118, $0010
    db $a9
    dw $00f1, $0000, $0118, $fee8, $0000
    db $a9
    dw $00f2, $0000, $0250, $feb0, $0000
    db $a9
    dw $00f3, $0000, $ff60, $feb0, $0000
    db $a9
    dw $00f4, $0000, $ffb0, $0150, $0010
    db $ff
    
Room02TransitionTable:: ; 0x41bb
    db $00
    dw $0002, $43c6, $ff60, $0150, $0010
    db $a9
    dw $0005, $0034, $0098, $0038, $0018
    db $a9
    dw $0006, $0042, $0020, $ffa8, $0000
    db $90
    dw $0000, $0000, $ff48, $ff88, $0000
    db $91
    dw $0000, $0000, $00c0, $00f8, $0010
    db $a9
    dw $00f0, $0000, $0098, $ffc0, $0018
    db $ff
    
Room03TransitionTable:: ; 0x41fe
    db $00
    dw $0003, $42f2, $fcc0, $03c0, $0010
    db $00
    dw $0003, $4563, $fc90, $0130, $0008
    db $00
    dw $0003, $46b3, $fe48, $0038, $0000
    db $00
    dw $0003, $43bb, $fc90, $fc68, $0008
    db $00
    dw $0003, $4340, $0318, $fe78, $0008
    db $98
    dw $0000, $00d8, $fcf8, $0000, $0000
    db $98
    dw $0001, $fdf8, $fc40, $0000, $0000
    db $98
    dw $0002, $fd98, $0070, $0000, $0000
    db $ff
    
Room04TransitionTable:: ; 0x4257
    db $49
    dw $0004, $40f3, $0000, $fdf0, $0000
    db $00
    dw $0004, $44c7, $ff20, $0228, $0010
    db $a9
    dw $0007, $0046, $ffe8, $0078, $0000
    db $a9
    dw $0008, $0038, $0278, $0248, $0000
    db $e0
    dw $00f0, $0010, $0100, $0000, $0000
    db $98
    dw $0003, $0240, $0378, $0000, $0000
    db $a9
    dw $00f0, $0000, $0008, $0228, $0010
    db $a9
    dw $00f1, $0000, $feb0, $0108, $0008
    db $a9
    dw $00f2, $0000, $feb0, $ffb8, $0008
    db $a9
    dw $00f3, $0000, $feb0, $fee8, $0008
    db $a9
    dw $00f4, $0000, $0148, $ff18, $0008
    db $a9
    dw $00f5, $0000, $0148, $00d0, $0018
    db $a9
    dw $00f6, $0000, $0208, $0320, $0008
    db $ff
    
Room05TransitionTable:: ; 0x42e7
    db $00
    dw $0005, $4141, $0200, $ffd0, $0000
    db $00
    dw $0005, $41fe, $0020, $0038, $0010
    db $00
    dw $0005, $4399, $fc68, $0038, $0010
    db $00
    dw $0005, $45b1, $fc30, $ffe8, $0008
    db $a8
    dw $0009, $0043, $0400, $00e8, $0010
    db $a8
    dw $000a, $0043, $0400, $00e8, $0010
    db $98
    dw $0004, $03d8, $0158, $0000, $0000
    db $a9
    dw $00f0, $0000, $0450, $0158, $0018
    db $ff
    
Room06TransitionTable:: ; 0x4340
    db $00
    dw $0006, $422a, $fdf8, $0110, $0008
    db $a8
    dw $000b, $001c, $00a8, $ff68, $0018
    db $a8
    dw $000c, $001c, $00a8, $ff68, $0018
    db $a8
    dw $000d, $0028, $ffd8, $ff68, $0018
    db $a8
    dw $000e, $0028, $ffd8, $ff68, $0018
    db $a8
    dw $000f, $0028, $ffd8, $ff68, $0018
    db $a8
    dw $0010, $0028, $ffd8, $ff68, $0018
    db $a9
    dw $0011, $0002, $00c8, $0030, $0018
    db $ff
    
Room07TransitionTable:: ; 0x4399
    db $00
    dw $0007, $42fd, $01d0, $fdf8, $0018
    db $a9
    dw $0012, $0035, $fe68, $fd10, $0008
    db $a9
    dw $0013, $0023, $fc00, $0008, $0008
    db $ff
    
Room08TransitionTable:: ; 0x43bb
    db $00
    dw $0008, $421f, $03d0, $fd60, $0018
    db $00
    dw $0008, $41bb, $0050, $01f8, $0000
    db $00
    dw $0008, $4409, $0318, $fe08, $0010
    db $80
    dw $0008, $4e38, $fef8, $0370, $0018
    db $98
    dw $0005, $0228, $fdb0, $0000, $0000
    db $98
    dw $0006, $fff0, $ff20, $0000, $0000
    db $98
    dw $0007, $0218, $0218, $0000, $0000
    db $ff
    
Room09TransitionTable:: ; 0x4409
    db $00
    dw $0009, $43d1, $0038, $00d0, $0010
    db $a9
    dw $0015, $0031, $ff98, $0098, $0010
    db $a9
    dw $0016, $0043, $ff30, $0098, $0010
    db $a9
    dw $00f8, $0000, $0090, $ff48, $0000
    db $ff
    
Room0aTransitionTable:: ; 0x4436
    db $12
    dw $000a, $44d2, $fd90, $04c0, $0008
    db $00
    dw $000a, $4622, $ffc8, $04f0, $0010
    db $00
    dw $000a, $4600, $ffe8, $02e0, $0018
    db $00
    dw $000a, $47aa, $0030, $fee8, $0010
    db $40
    dw $000a, $449a, $ffe0, $fd50, $0000
    db $a8
    dw $0017, $0028, $fdd8, $03d8, $0018
    db $ff
    
Room0bTransitionTable:: ; 0x4479
    db $00
    dw $000b, $5a17, $01b8, $ffb0, $0000
    db $00
    dw $000b, $5aea, $0050, $0058, $0010
    db $00
    dw $000b, $4520, $ff80, $0058, $0010
    db $40
    dw $000b, $4462, $fdf0, $0018, $0008
    db $00
    dw $000b, $4691, $0210, $0180, $0018
    db $98
    dw $0008, $fff0, $ffe0, $0000, $0000
    db $98
    dw $0009, $0110, $0008, $0000, $0000
    db $ff
    
Room0cTransitionTable:: ; 0x44c7
    db $00
    dw $000c, $4262, $fdb0, $01e8, $0008
    db $00
    dw $000c, $4436, $0250, $fd10, $0000
    db $a8
    dw $0018, $0043, $0178, $ffd0, $0010
    db $a8
    dw $0019, $0043, $0048, $0178, $0010
    db $ec
    dw $00fc, $0180, $ffa0, $0010, $0000
    db $a8
    dw $00f0, $0000, $fe88, $01c8, $0000
    db $a8
    dw $00f1, $0000, $ff90, $01c8, $0000
    db $a8
    dw $00f2, $0000, $0110, $01c8, $0000
    db $ff
    
Room0dTransitionTable:: ; 0x4520
    db $00
    dw $000d, $448f, $03d0, $00f8, $0018
    db $00
    dw $000d, $5a86, $00c8, $fee0, $0018
    db $80
    dw $000d, $4aac, $ff50, $0128, $0000
    db $a8
    dw $001a, $0028, $0010, $ff78, $0018
    db $98
    dw $000a, $01e0, $0118, $0000, $0000
    db $a9
    dw $00f0, $0000, $0258, $00b8, $0000
    db $ff
    
Room0eTransitionTable:: ; 0x4563
    db $00
    dw $000e, $4209, $ff10, $ff30, $0000
    db $a9
    dw $001b, $0043, $ffb0, $0098, $001c
    db $a9
    dw $001c, $0006, $0170, $ff78, $0000
    db $a8
    dw $001d, $003e, $0140, $00d0, $0010
    db $98
    dw $000b, $0148, $00d0, $0000, $0000
    db $a9
    dw $00f0, $0000, $ff28, $0098, $0010
    db $a9
    dw $00f1, $0000, $fe88, $ffe8, $0008
    db $ff
    
Room0fTransitionTable:: ; 0x45b1
    db $00
    dw $000f, $4308, $0190, $00d0, $0010
    db $00
    dw $000f, $5b39, $fe78, $0200, $0010
    db $ff
    
Room10TransitionTable:: ; 0x45c8
    db $00
    dw $0010, $4745, $fe30, $fd30, $0000
    db $00
    dw $0010, $40fe, $0038, $0310, $0010
    db $a9
    dw $001e, $0043, $0000, $0108, $0000
    db $a8
    dw $001f, $003e, $fe30, $0048, $0010
    db $98
    dw $000c, $fe30, $0048, $0000, $0000
    db $ff
    
Room11TransitionTable:: ; 0x4600
    db $00
    dw $0011, $444c, $fee0, $0150, $0010
    db $a9
    dw $0020, $0013, $ff88, $0008, $0000
    db $a8
    dw $00f0, $0000, $0140, $00b8, $0018
    db $ff
    
Room12TransitionTable:: ; 0x4622
    db $00
    dw $0012, $4441, $ff88, $fe70, $0018
    db $a8
    dw $0021, $0028, $0228, $01b0, $0018
    db $a8
    dw $0022, $0028, $0228, $01b0, $0018
    db $a8
    dw $0023, $0028, $0228, $01b0, $0018
    db $a8
    dw $0024, $001c, $0050, $01b0, $0018
    db $a8
    dw $0025, $001c, $0050, $01b0, $0018
    db $a8
    dw $0026, $001c, $0050, $01b0, $0018
    db $98
    dw $000d, $ff00, $0028, $0000, $0000
    db $98
    dw $000e, $0050, $01f0, $0000, $0000
    db $98
    dw $000f, $0130, $0230, $0000, $0000
    db $ff
    
Room13TransitionTable:: ; 0x4691
    db $00
    dw $0013, $44a5, $ff88, $0260, $0018
    db $00
    dw $0013, $46ec, $0090, $fc80, $0018
    db $a9
    dw $00f8, $0000, $0038, $fc30, $0000
    db $ff
    
Room14TransitionTable:: ; 0x46b3
    db $00
    dw $0014, $4214, $0070, $ffd0, $0018
    db $a9
    dw $0027, $0047, $ffb0, $0050, $0010
    db $a9
    dw $0028, $0025, $0050, $0050, $0010
    db $a9
    dw $00f8, $0000, $0000, $0050, $0010
    db $ff
    
Room15TransitionTable:: ; 0x46e0
    db $00
    dw $0015, $4750, $00c0, $0050, $0010
    db $ff
    
Room16TransitionTable:: ; 0x46ec
    db $00
    dw $0016, $469c, $0000, $00d0, $0010
    db $40
    dw $0016, $4e7b, $0000, $ff30, $0000
    db $e9
    dw $00f9, $0090, $0000, $0018, $0000
    db $a9
    dw $0029, $0026, $00d0, $0040, $0018
    db $a9
    dw $002a, $0024, $ff38, $ff58, $0018
    db $a9
    dw $00f0, $0000, $ff58, $ff58, $0004
    db $a9
    dw $00f1, $0000, $0088, $ff58, $001c
    db $a9
    dw $00f2, $0000, $ff58, $00d0, $0008
    db $ff
    
Room17TransitionTable:: ; 0x4745
    db $00
    dw $0017, $45c8, $0150, $0110, $0018
    db $00
    dw $0017, $46e0, $0130, $feb0, $0000
    db $a8
    dw $002b, $0028, $fed0, $feb0, $0000
    db $a8
    dw $002c, $0028, $fed0, $feb0, $0000
    db $a9
    dw $002d, $0038, $00c8, $ff50, $0018
    db $ff
    
Room18TransitionTable:: ; 0x477d
    db $00
    dw $0018, $47b5, $0110, $ff88, $0018
    db $a9
    dw $002e, $0037, $fff8, $0110, $0010
    db $a9
    dw $00f0, $0000, $ffe0, $ff28, $0000
    db $a9
    dw $00f1, $0000, $fef0, $00a8, $000c
    db $ff
    
Room19TransitionTable:: ; 0x47aa
    db $00
    dw $0019, $4457, $0000, $00d0, $0010
    db $00
    dw $0019, $477d, $00d0, $ffa0, $0018
    db $ff
    
Room1aTransitionTable:: ; 0x47c1
    db $82
    dw $001a, $4c49, $01d0, $0118, $0018
    db $00
    dw $001a, $47f9, $fc70, $0128, $0008
    db $a8
    dw $003c, $003e, $01d0, $feb0, $0010
    db $98
    dw $0028, $ff18, $0138, $0000, $0000
    db $98
    dw $0029, $0090, $feb0, $0000, $0000
    db $ff
    
Room1bTransitionTable:: ; 0x47f9
    db $00
    dw $001b, $47cc, $0328, $feb0, $0018
    db $00
    dw $001b, $5b44, $fc38, $00d8, $0000
    db $98
    dw $002a, $ff18, $0138, $0000, $0000
    db $98
    dw $002b, $0090, $feb0, $0000, $0000
    db $a8
    dw $003d, $0028, $03c0, $00f0, $0010
    db $a8
    dw $003e, $0028, $03c0, $0148, $0010
    db $ff
    
Room1cTransitionTable:: ; 0x483c
    db $00
    dw $001c, $4874, $fc30, $ffe8, $0008
    db $00
    dw $001c, $4e43, $0360, $0150, $0010
    db $98
    dw $002c, $00f0, $feb0, $0000, $0000
    db $98
    dw $002d, $fd20, $0150, $0000, $0000
    db $e1
    dw $00f1, $0000, $fef8, $0010, $0000
    db $ff
    
Room1dTransitionTable:: ; 0x4874
    db $00
    dw $001d, $483c, $03d0, $00c0, $0018
    db $00
    dw $001d, $4954, $fc30, $fdf0, $0008
    db $00
    dw $001d, $4b80, $fc30, $0190, $0008
    db $7d
    dw $001d, $4109, $0000, $02e8, $0000
    db $ff
    
Room1eTransitionTable:: ; 0x48a1
    db $00
    dw $001e, $4b75, $fe30, $01a0, $0008
    db $00
    dw $001e, $4ca4, $01b0, $fe30, $0000
    db $a8
    dw $003f, $0028, $0078, $0068, $0010
    db $a8
    dw $0040, $0028, $0178, $ff98, $0010
    db $ff
    
Room1fTransitionTable:: ; 0x48ce
    db $00
    dw $001f, $4a96, $ff60, $00d0, $0010
    db $00
    dw $001f, $4c60, $00d0, $0080, $0018
    db $a9
    dw $0041, $0048, $0010, $ff88, $0000
    db $a8
    dw $0042, $0028, $ff48, $ff70, $0010
    db $ff
    
Room20TransitionTable:: ; 0x48fb
    db $00
    dw $0020, $4d58, $01b8, $fc80, $0008
    db $00
    dw $0020, $4dd3, $ff78, $00e0, $0008
    db $00
    dw $0020, $4ad9, $fd30, $ffb8, $0008
    db $8a
    dw $0020, $5b4f, $01c8, $ff00, $0008
    db $98
    dw $002e, $ff00, $ff98, $0000, $0000
    db $98
    dw $002f, $0210, $0058, $0000, $0000
    db $98
    dw $0030, $0210, $fba8, $0000, $0000
    db $a8
    dw $0043, $0028, $0130, $ff68, $0008
    db $ff
    
Room21TransitionTable:: ; 0x4954
    db $00
    dw $0021, $487f, $fec0, $ffd0, $0000
    db $00
    dw $0021, $4cfe, $01d0, $0030, $0010
    db $a9
    dw $0044, $003d, $feb0, $0000, $0008
    db $a8
    dw $00f0, $0000, $0108, $0000, $0010
    db $ff
    
Room22TransitionTable:: ; 0x4981
    db $00
    dw $0022, $4cba, $fee0, $fef0, $0000
    db $a9
    dw $0045, $003e, $ff08, $01a8, $0008
    db $a9
    dw $0046, $0043, $0150, $ff38, $0000
    db $a9
    dw $00f8, $0000, $ffc8, $ff60, $0010
    db $ff
    
Room23TransitionTable:: ; 0x49ae
    db $00
    dw $0023, $4b6a, $01d0, $fff0, $0018
    db $a9
    dw $0047, $003f, $fe78, $fff0, $0008
    db $a8
    dw $00fe, $0000, $0000, $0000, $0008
    db $e7
    dw $00f7, $ff80, $0000, $0008, $0000
    db $e8
    dw $00f8, $0118, $ffc0, $0010, $0000
    db $a9
    dw $00f0, $0000, $01c0, $0090, $0010
    db $a9
    dw $00f1, $0000, $0120, $0090, $0010
    db $a9
    dw $00f2, $0000, $00a0, $0090, $0010
    db $a9
    dw $00f3, $0000, $0058, $0090, $0010
    db $a9
    dw $00f4, $0000, $ffc0, $0090, $0010
    db $a9
    dw $00f5, $0000, $ff00, $0090, $0010
    db $a9
    dw $00f6, $0000, $fe80, $0090, $0010
    db $a9
    dw $00f7, $0000, $01c0, $fe78, $0000
    db $a9
    dw $00f8, $0000, $0120, $fe78, $0000
    db $a9
    dw $00f9, $0000, $00a0, $fe78, $0000
    db $a9
    dw $00fa, $0000, $0058, $fe78, $0000
    db $a9
    dw $00fb, $0000, $ffc0, $fe78, $0000
    db $a9
    dw $00fc, $0000, $ff00, $fe78, $0000
    db $a9
    dw $00fd, $0000, $fe80, $fe78, $0000
    db $ff
    
Room24TransitionTable:: ; 0x4a80
    db $00
    dw $0024, $4b5f, $0090, $0310, $0018
    db $00
    dw $0024, $4cdc, $fe88, $0040, $0018
    db $00
    dw $0024, $48ce, $0090, $fc40, $0018
    db $00
    dw $0024, $4bad, $fe38, $0350, $0010
    db $81
    dw $0024, $4536, $fba0, $0108, $0010
    db $98
    dw $0031, $fed8, $0338, $0000, $0000
    db $98
    dw $0032, $fe40, $0008, $0000, $0000
    db $98
    dw $0033, $ff50, $fc58, $0000, $0000
    db $ff
    
Room25TransitionTable:: ; 0x4ad9
    db $00
    dw $0025, $4911, $0210, $0280, $0018
    db $00
    dw $0025, $4e22, $fec8, $fe88, $0010
    db $a8
    dw $0048, $0022, $0170, $03c0, $0008
    db $a8
    dw $0049, $0028, $0100, $03c0, $0008
    db $a8
    dw $004a, $0028, $0080, $03c0, $0008
    db $98
    dw $0034, $ffb8, $fe60, $0000, $0000
    db $98
    dw $0035, $0150, $02c8, $0000, $0000
    db $ff
    
Room26TransitionTable:: ; 0x4b27
    db $00
    dw $0026, $4ce7, $fef0, $00b0, $0008
    db $a9
    dw $004b, $0009, $00a0, $00c8, $0010
    db $a9
    dw $004c, $003e, $0110, $00c8, $0010
    db $a8
    dw $004d, $001c, $fef0, $ff30, $0008
    db $ff
    
Room27TransitionTable:: ; 0x4b54
    db $00
    dw $0027, $4ba2, $fd60, $fd30, $0000
    db $00
    dw $0027, $4a80, $0070, $fd30, $0000
    db $00
    dw $0027, $49ae, $0238, $ffe0, $0008
    db $00
    dw $0027, $48a1, $00c8, $02d0, $0010
    db $00
    dw $0027, $488a, $fd30, $0280, $0008
    db $98
    dw $0036, $0120, $0280, $0000, $0000
    db $98
    dw $0037, $fee0, $fd60, $0000, $0000
    db $ff
    
Room28TransitionTable:: ; 0x4ba2
    db $00
    dw $0028, $4b54, $ff00, $01d0, $0010
    db $00
    dw $0028, $4aa1, $0190, $fe88, $0018
    db $a9
    dw $004e, $004a, $0008, $fed0, $0000
    db $a9
    dw $00f0, $0000, $ff08, $fef0, $0008
    db $a9
    dw $00f1, $0000, $00b8, $0168, $0010
    db $a9
    dw $00f2, $0000, $00b8, $00d8, $0000
    db $a9
    dw $00f3, $0000, $00d8, $0008, $0010
    db $ff
    
Room29TransitionTable:: ; 0x4bf0
    db $00
    dw $0029, $4cd1, $ffc0, $00f0, $0010
    db $a9
    dw $004f, $003e, $ff10, $fff8, $0008
    db $a9
    dw $0050, $0049, $00c8, $ffc8, $0004
    db $a9
    dw $0051, $0038, $ff10, $00f0, $0004
    db $a9
    dw $00f8, $0000, $00f0, $0078, $0018
    db $e6
    dw $00f5, $ff20, $0000, $0010, $0000
    db $e6
    dw $00f6, $ff20, $ff60, $0010, $0000
    db $a9
    dw $00f0, $0000, $0088, $ff48, $0018
    db $ff
    
Room2aTransitionTable:: ; 0x4c49
    db $83
    dw $002a, $47c1, $fff0, $0008, $0000
    db $84
    dw $002a, $4c6b, $fff0, $0150, $0010
    db $ff
    
Room2bTransitionTable:: ; 0x4c60
    db $00
    dw $002b, $48d9, $fef0, $0240, $0008
    db $85
    dw $002b, $4c54, $00d0, $fe98, $0000
    db $ff
    
Room2cTransitionTable:: ; 0x4c77
    db $00
    dw $002c, $4caf, $ff38, $0190, $0008
    db $a0
    dw $003f, $0018, $ff98, $0000, $0000
    db $a8
    dw $0052, $0039, $ff38, $fcb0, $0008
    db $a8
    dw $0053, $003e, $fea0, $ff78, $0000
    db $ff
    
Room2dTransitionTable:: ; 0x4ca4
    db $00
    dw $002d, $48ac, $0058, $0150, $0010
    db $00
    dw $002d, $4c77, $0058, $feb0, $0000
    db $00
    dw $002d, $4981, $fe00, $ffd0, $0010
    db $98
    dw $0038, $ff88, $ffb0, $0000, $0000
    db $ff
    
Room2eTransitionTable:: ; 0x4cd1
    db $00
    dw $002e, $4bf0, $0010, $0110, $0010
    db $00
    dw $002e, $4a8b, $0090, $0000, $0018
    db $00
    dw $002e, $4b27, $fff0, $fe70, $0000
    db $98
    dw $0039, $ffa0, $0078, $0000, $0000
    db $ff
    
Room2fTransitionTable:: ; 0x4cfe
    db $00
    dw $002f, $495f, $fec8, $00d0, $0010
    db $a8
    dw $0054, $0043, $0158, $ff68, $0004
    db $ff
    
Room30TransitionTable:: ; 0x4d15
    db $00
    dw $0030, $4e2d, $00f0, $00e0, $0018
    db $a9
    dw $0055, $0029, $ffe8, $ff08, $0000
    db $a9
    dw $0056, $004b, $0030, $ff80, $0008
    db $a9
    dw $0057, $002c, $ff48, $ffe0, $0008
    db $a9
    dw $0058, $003e, $ff48, $ffa8, $0008
    db $a9
    dw $00f8, $0000, $00f0, $0038, $0018
    db $ff
    
Room31TransitionTable:: ; 0x4d58
    db $00
    dw $0031, $48fb, $ff30, $0000, $0008
    db $00
    dw $0031, $4da6, $02f0, $fdd0, $0018
    db $00
    dw $0031, $4e00, $0200, $0150, $0010
    db $a9
    dw $0059, $002c, $ff30, $00f8, $0010
    db $a8
    dw $005a, $004c, $0248, $ffa8, $0018
    db $98
    dw $003a, $0298, $fef8, $0000, $0000
    db $98
    dw $003b, $0098, $ff88, $0000, $0000
    db $ff
    
Room32TransitionTable:: ; 0x4da6
    db $00
    dw $0032, $4d63, $01d0, $0080, $0018
    db $a9
    dw $005b, $000f, $0168, $fe00, $0018
    db $a9
    dw $00f8, $0000, $ffb0, $ff78, $0008
    db $f0
    dw $00ef, $ffb0, $fe80, $0000, $0000
    db $ff
    
Room33TransitionTable:: ; 0x4dd3
    db $00
    dw $0033, $4906, $ffd0, $00d0, $0010
    db $a9
    dw $005c, $003e, $0050, $ff88, $0000
    db $a9
    dw $005d, $003e, $0050, $ff88, $0000
    db $a9
    dw $005e, $0014, $ffb0, $ff88, $0000
    db $ff
    
Room34TransitionTable:: ; 0x4e00
    db $00
    dw $0034, $4d6e, $ffd0, $0110, $0010
    db $a8
    dw $005f, $0038, $0040, $0068, $0000
    db $a9
    dw $0060, $0043, $00d8, $00b8, $0010
    db $ff
    
Room35TransitionTable:: ; 0x4e22
    db $00
    dw $0035, $4ae4, $ff98, $02d0, $0010
    db $00
    dw $0035, $4d15, $ffc8, $0040, $0018
    db $81
    dw $0035, $43dc, $ffc8, $feb8, $0018
    db $00
    dw $0035, $4847, $fed8, $fc30, $0000
    db $98
    dw $003c, $ffa8, $00f8, $0000, $0000
    db $98
    dw $003d, $02d0, $ff00, $0000, $0000
    db $98
    dw $003e, $ff98, $fd30, $0000, $0000
    db $ff
    
Room36TransitionTable:: ; 0x4e70
    db $00
    dw $0036, $4f00, $01a8, $fbb0, $0000
    db $40
    dw $0036, $46f7, $02b8, $0480, $0008
    db $00
    dw $0036, $4f22, $fc30, $01f0, $0008
    db $a8
    dw $0064, $0022, $0238, $0248, $000c
    db $a8
    dw $0065, $0022, $0238, $0248, $000c
    db $a8
    dw $0066, $0028, $03d0, $04d0, $000c
    db $a8
    dw $0067, $0028, $03d0, $04d0, $000c
    db $a8
    dw $0068, $0028, $03d0, $04d0, $000c
    db $a8
    dw $0069, $001c, $0350, $04d0, $000c
    db $a8
    dw $006a, $001c, $0350, $04d0, $000c
    db $a8
    dw $006b, $0048, $fca8, $0178, $000c
    db $a9
    dw $00f8, $0000, $fc30, $0200, $0018
    db $ff
    
Room37TransitionTable:: ; 0x4ef5
    db $00
    dw $0037, $4f2d, $fd60, $0088, $0010
    db $00
    dw $0037, $4e70, $03a8, $03d0, $0010
    db $a9
    dw $00f8, $0000, $00c8, $ff38, $0000
    db $a9
    dw $00f9, $0000, $03a8, $0138, $0000
    db $ff
    
Room38TransitionTable:: ; 0x4f22
    db $00
    dw $0038, $4e86, $0148, $0270, $0018
    db $00
    dw $0038, $4ef5, $0258, $fd30, $0000
    db $00
    dw $0038, $4f7c, $fd30, $fe40, $0008
    db $83
    dw $0038, $5073, $0000, $fd30, $0000
    db $a9
    dw $00f8, $0000, $0020, $fdd8, $0000
    db $a9
    dw $00f9, $0000, $00c0, $02d0, $0010
    db $ff
    
Room39TransitionTable:: ; 0x4f65
    db $8d
    dw $0039, $560d, $fdc8, $0300, $0008
    db $a8
    dw $006c, $001a, $fdf0, $03d0, $000c
    db $ff
    
Room3aTransitionTable:: ; 0x4f7c
    db $00
    dw $003a, $4f38, $0400, $0440, $0018
    db $40
    dw $003a, $51fc, $fce0, $fc30, $0000
    db $a8
    dw $006d, $001c, $0400, $03b8, $000c
    db $a8
    dw $006e, $001c, $0400, $03b8, $000c
    db $a8
    dw $006f, $0028, $0400, $0490, $000c
    db $a8
    dw $0070, $0028, $0400, $0490, $000c
    db $ff
    
Room3bTransitionTable:: ; 0x4fbf
    db $00
    dw $003b, $5046, $0010, $ff30, $0000
    db $a9
    dw $0071, $0012, $00b8, $ff30, $0000
    db $a9
    dw $00f8, $0000, $ff30, $0038, $0008
    db $ed
    dw $00fd, $ff30, $0000, $0018, $0000
    db $ff
    
Room3cTransitionTable:: ; 0x4fec
    db $00
    dw $003c, $5175, $feb0, $fd30, $0000
    db $a8
    dw $0072, $0056, $fe98, $0028, $000c
    db $a8
    dw $0073, $0043, $0140, $ff38, $000c
    db $ff
    
Room3dTransitionTable:: ; 0x500e
    db $00
    dw $003d, $5089, $00f8, $fe30, $0000
    db $00
    dw $003d, $51a2, $0250, $01d0, $0010
    db $a9
    dw $0074, $0041, $0078, $fe30, $0008
    db $a9
    dw $0075, $002c, $fc30, $0008, $0010
    db $ff
    
Room3eTransitionTable:: ; 0x503b
    db $00
    dw $003e, $50ee, $0208, $03d0, $0010
    db $00
    dw $003e, $4fbf, $ff38, $ffe8, $0008
    db $00
    dw $003e, $51da, $0328, $0068, $0018
    db $a9
    dw $0076, $0015, $fc30, $fe20, $0010
    db $a9
    dw $0077, $004f, $fc30, $fd40, $0008
    db $ff
    
Room3fTransitionTable:: ; 0x5073
    db $82
    dw $003f, $4f43, $0138, $0350, $0010
    db $00
    dw $003f, $513d, $0210, $02b0, $0018
    db $00
    dw $003f, $500e, $fe50, $0350, $0010
    db $90
    dw $0000, $0000, $0028, $fe10, $0010
    db $ff
    
Room40TransitionTable:: ; 0x50a0
    db $00
    dw $0040, $51c4, $ffc0, $00d0, $0010
    db $a9
    dw $0078, $0038, $ff90, $fff8, $0018
    db $a9
    dw $0079, $000e, $0078, $ffb8, $0008
    db $a8
    dw $007a, $0022, $00d0, $ff30, $0008
    db $90
    dw $0000, $0000, $ff90, $0048, $0018
    db $91
    dw $0000, $0000, $ff50, $ff58, $0000
    db $ff
    
Room41TransitionTable:: ; 0x50e3
    db $00
    dw $0041, $5645, $01f0, $02f8, $0000
    db $00
    dw $0041, $503b, $fe30, $ff08, $0010
    db $a8
    dw $007b, $0028, $fde0, $fdb8, $0018
    db $a8
    dw $007c, $0028, $fde0, $fdb8, $0018
    db $a8
    dw $007d, $0022, $ffa8, $fd70, $0018
    db $a8
    dw $007e, $0022, $ffa8, $fd70, $0018
    db $a9
    dw $00f8, $0000, $0008, $0168, $0018
    db $a9
    dw $00f9, $0000, $03f8, $00f8, $0008
    db $ff
    
Room42TransitionTable:: ; 0x513c
    db $ff
    
Room43TransitionTable:: ; 0x513d
    db $00
    dw $0043, $507e, $fef0, $0018, $0008
    db $00
    dw $0043, $5180, $0108, $0380, $0018
    db $00
    dw $0043, $516a, $0150, $fc90, $0018
    db $a8
    dw $007f, $0041, $ff88, $ff98, $0000
    db $ff
    
Room44TransitionTable:: ; 0x516a
    db $00
    dw $0044, $5153, $fd38, $fca8, $0008
    db $00
    dw $0044, $4fec, $0048, $0290, $0010
    db $00
    dw $0044, $5148, $fc70, $0200, $0008
    db $a9
    dw $0080, $000e, $02c8, $fe18, $0018
    db $a9
    dw $0084, $003e, $02c8, $fec0, $0018
    db $ff
    
Room45TransitionTable:: ; 0x51a2
    db $00
    dw $0045, $5019, $feb0, $0020, $0008
    db $00
    dw $0045, $51cf, $0150, $0000, $0018
    db $a8
    dw $0081, $0019, $fef8, $01d0, $0018
    db $ff
    
Room46TransitionTable:: ; 0x51c4
    db $00
    dw $0046, $50a0, $fc60, $0070, $0010
    db $00
    dw $0046, $51ad, $0000, $0070, $0010
    db $00
    dw $0046, $5051, $03d0, $0000, $0018
    db $ff
    
Room47TransitionTable:: ; 0x51e6
    db $00
    dw $0047, $53a6, $0068, $0090, $0010
    db $40
    dw $0047, $5384, $0250, $fdc8, $0018
    db $40
    dw $0047, $4f87, $fc90, $fe88, $0010
    db $40
    dw $0047, $524a, $ff88, $fd78, $0000
    db $00
    dw $0047, $52ba, $ff18, $fe08, $0010
    db $a8
    dw $008c, $0022, $fc78, $fc40, $000c
    db $a8
    dw $008d, $0022, $fc78, $fc40, $000c
    db $a8
    dw $008e, $0022, $fc78, $fc40, $000c
    db $e4
    dw $00f4, $0080, $fdb8, $0010, $0000
    db $ff
    
Room48TransitionTable:: ; 0x524a
    db $40
    dw $0048, $5207, $0180, $0250, $0010
    db $00
    dw $0048, $5298, $0138, $0230, $0008
    db $98
    dw $0078, $ff40, $ff28, $0000, $0000
    db $98
    dw $0079, $00f0, $ff90, $0000, $0000
    db $a9
    dw $008f, $004d, $ff38, $fe70, $0008
    db $a9
    dw $0090, $003e, $0138, $ff88, $0018
    db $a9
    dw $0091, $0018, $0108, $ff28, $0000
    db $ff
    
Room49TransitionTable:: ; 0x5298
    db $00
    dw $0049, $5255, $ff50, $00d0, $0010
    db $a9
    dw $0092, $0001, $ff78, $ffc8, $0000
    db $a9
    dw $00f0, $0000, $0068, $00d0, $0018
    db $ff
    
Room4aTransitionTable:: ; 0x52ba
    db $00
    dw $004a, $5212, $feb0, $fed8, $0008
    db $a9
    dw $0093, $0043, $ffa8, $00f8, $0010
    db $a9
    dw $0094, $000e, $ff60, $00f8, $0010
    db $90
    dw $0000, $0000, $00d8, $00b8, $0018
    db $91
    dw $0000, $0000, $ffc8, $ff38, $0000
    db $ff
    
Room4bTransitionTable:: ; 0x52f2
    db $40
    dw $004b, $532a, $03d0, $0040, $0018
    db $00
    dw $004b, $55eb, $03d0, $fc60, $0018
    db $00
    dw $004b, $5592, $fc30, $fd30, $0008
    db $00
    dw $004b, $5357, $fc30, $fe30, $0008
    db $ff
    
Room4cTransitionTable:: ; 0x531f
    db $82
    dw $004c, $53f4, $fc90, $fbf0, $0000
    db $40
    dw $004c, $52f2, $0048, $0470, $0008
    db $a8
    dw $0095, $0028, $0310, $04d0, $0010
    db $a8
    dw $0096, $0028, $0310, $04d0, $0010
    db $f1
    dw $00ee, $03c0, $0000, $0010, $0000
    db $ff
    
Room4dTransitionTable:: ; 0x5357
    db $00
    dw $004d, $5313, $ff30, $0120, $0008
    db $a9
    dw $00f8, $0000, $ff48, $ff88, $0008
    db $a9
    dw $00f9, $0000, $ffa8, $0150, $0010
    db $a9
    dw $00f0, $0000, $0098, $0108, $0018
    db $ff
    
Room4eTransitionTable:: ; 0x5384
    db $40
    dw $004e, $51f1, $fe78, $00e8, $0008
    db $a9
    dw $0097, $0043, $fcf8, $01b8, $0000
    db $a8
    dw $0098, $0038, $fd80, $0340, $0010
    db $ff
    
Room4fTransitionTable:: ; 0x53a6
    db $00
    dw $004f, $51e6, $fd90, $0328, $0000
    db $00
    dw $004f, $5490, $02c8, $01e0, $0018
    db $00
    dw $004f, $53de, $0370, $fd98, $0018
    db $a8
    dw $0099, $0028, $0328, $fb30, $0010
    db $a8
    dw $009a, $0028, $0328, $fb30, $0010
    db $ff
    
Room50TransitionTable:: ; 0x53de
    db $00
    dw $0050, $53bc, $0170, $0250, $0010
    db $00
    dw $0050, $5437, $0138, $01c0, $0008
    db $83
    dw $0050, $531f, $ff68, $ff38, $0008
    db $a9
    dw $009b, $0050, $0098, $ffd0, $0010
    db $a9
    dw $009c, $003e, $0138, $ffa8, $0018
    db $a9
    dw $009d, $0051, $00c0, $ff28, $0000
    db $ee
    dw $00fe, $ff80, $ff60, $0010, $0000
    db $a9
    dw $00f0, $0000, $0030, $fe70, $0000
    db $ff
    
Room51TransitionTable:: ; 0x5437
    db $00
    dw $0051, $53e9, $ff58, $00d0, $0010
    db $a9
    dw $009e, $0043, $00d0, $0058, $0018
    db $98
    dw $007a, $0030, $fff8, $0000, $0000
    db $a9
    dw $00f0, $0000, $0078, $00d0, $0018
    db $a9
    dw $00f1, $0000, $ff78, $ffc8, $0000
    db $ff
    
Room52TransitionTable:: ; 0x546f
    db $00
    dw $0052, $550b, $0088, $0290, $0018
    db $00
    dw $0052, $557b, $03a0, $0360, $0018
    db $00
    dw $0052, $54a7, $fdb8, $01f0, $0008
    db $00
    dw $0052, $53b1, $fc30, $03a0, $0008
    db $a9
    dw $009f, $003c, $fff8, $fe00, $0000
    db $ff
    
Room53TransitionTable:: ; 0x54a7
    db $00
    dw $0053, $5485, $fef0, $ffa0, $0008
    db $a9
    dw $00a0, $002e, $ff38, $0058, $0010
    db $a9
    dw $00a1, $002e, $0098, $0090, $0018
    db $a9
    dw $00a2, $002e, $0098, $ff88, $0018
    db $a9
    dw $00a3, $002e, $0000, $ffc8, $0000
    db $a9
    dw $00f8, $0000, $ff38, $0058, $0010
    db $a9
    dw $00f9, $0000, $0098, $0090, $0018
    db $a9
    dw $00fa, $0000, $ffb0, $ffc8, $0000
    db $a9
    dw $00fb, $0000, $fef0, $0020, $0008
    db $ff
    
Room54TransitionTable:: ; 0x550b
    db $00
    dw $0054, $546f, $0178, $0250, $0010
    db $00
    dw $0054, $5559, $0138, $0200, $0008
    db $00
    dw $0054, $5570, $00a8, $fe70, $0000
    db $a9
    dw $00a4, $0038, $0180, $ff38, $0010
    db $a9
    dw $00f8, $0000, $ff48, $ff20, $0008
    db $ea
    dw $00fa, $00c0, $fe90, $0018, $0000
    db $eb
    dw $00fb, $0150, $fe90, $0018, $0000
    db $ff
    
Room55TransitionTable:: ; 0x5559
    db $00
    dw $0055, $5516, $ff60, $00d0, $0010
    db $a8
    dw $00a6, $0043, $0078, $0000, $0010
    db $ff
    
Room56TransitionTable:: ; 0x5570
    db $00
    dw $0056, $5521, $02d0, $0130, $0018
    db $00
    dw $0056, $547a, $02d0, $0000, $0018
    db $a9
    dw $00a7, $002f, $0090, $0248, $0010
    db $ff
    
Room57TransitionTable:: ; 0x5592
    db $00
    dw $0057, $5308, $0110, $0060, $0018
    db $a9
    dw $00a8, $0043, $0070, $ffc8, $0000
    db $a9
    dw $00a9, $0043, $0070, $ffc8, $0000
    db $a9
    dw $00aa, $003e, $ff20, $ffc8, $0008
    db $a9
    dw $00ab, $003e, $ff20, $ffc8, $0008
    db $a9
    dw $00ac, $005b, $ff90, $ffc8, $0000
    db $a9
    dw $00f0, $0000, $ffc0, $0028, $0010
    db $a9
    dw $00f1, $0000, $0048, $0090, $0008
    db $ff
    
Room58TransitionTable:: ; 0x55eb
    db $00
    dw $0058, $52fd, $fe78, $0110, $0010
    db $a9
    dw $00ad, $004e, $0188, $fef0, $001c
    db $ff
    
Room59TransitionTable:: ; 0x5602
    db $00
    dw $0059, $562f, $03d0, $0370, $0018
    db $8c
    dw $0059, $4f65, $fc30, $fcb0, $0008
    db $a8
    dw $00b4, $0020, $fdd8, $fc68, $000c
    db $a9
    dw $00f8, $0000, $fc68, $fc30, $0000
    db $ff
    
Room5aTransitionTable:: ; 0x562f
    db $00
    dw $005a, $5602, $fe30, $0020, $0008
    db $83
    dw $005a, $565c, $feb0, $0108, $0010
    db $00
    dw $005a, $50e3, $00f8, $0250, $0008
    db $ff
    
Room5bTransitionTable:: ; 0x5651
    db $00
    dw $005b, $5673, $0000, $feb0, $0000
    db $82
    dw $005b, $563a, $0000, $0150, $0010
    db $91
    dw $0000, $0000, $0068, $0000, $0018
    db $ff
    
Room5cTransitionTable:: ; 0x5673
    db $00
    dw $005c, $5651, $02a0, $00c8, $0000
    db $00
    dw $005c, $570f, $0078, $fe68, $0010
    db $00
    dw $005c, $56cc, $fd80, $fe48, $0010
    db $a8
    dw $00b5, $0028, $ffc0, $ff80, $000c
    db $a8
    dw $00b6, $0028, $ffc0, $ff80, $000c
    db $a9
    dw $00b7, $001b, $fc40, $fdf0, $0008
    db $98
    dw $00a0, $0058, $0180, $0000, $0000
    db $98
    dw $00a1, $ff88, $fee0, $0000, $0000
    db $ff
    
Room5dTransitionTable:: ; 0x56cc
    db $00
    dw $005d, $5689, $fff8, $01d0, $0010
    db $a9
    dw $00b9, $0036, $0150, $ffc0, $0018
    db $a9
    dw $00f8, $0000, $feb0, $fe98, $0008
    db $a9
    dw $00f9, $0000, $0008, $feb0, $0010
    db $a9
    dw $00fa, $0000, $fff8, $fe30, $0000
    db $ff
    
Room5eTransitionTable:: ; 0x5704
    db $00
    dw $005e, $5768, $0368, $fc30, $0000
    db $00
    dw $005e, $567e, $fcd8, $fc30, $0000
    db $40
    dw $005e, $57e3, $fc30, $fd70, $0008
    db $00
    dw $005e, $57a0, $0120, $02f8, $0000
    db $00
    dw $005e, $58d9, $03d0, $0338, $0018
    db $98
    dw $00a2, $fcd8, $fe70, $0000, $0000
    db $98
    dw $00a3, $ff98, $0370, $0000, $0000
    db $98
    dw $00a4, $fee8, $0230, $0000, $0000
    db $98
    dw $00a5, $0000, $fd88, $0000, $0000
    db $ff
    
Room5fTransitionTable:: ; 0x5768
    db $00
    dw $005f, $5704, $01d0, $00d0, $0010
    db $a9
    dw $00ba, $0054, $fff8, $ff58, $0000
    db $a9
    dw $00f8, $0000, $01d0, $ff60, $0018
    db $ff
    
Room60TransitionTable:: ; 0x578a
    db $00
    dw $0060, $58ef, $0180, $00d0, $0010
    db $00
    dw $0060, $57ab, $0078, $ff20, $0008
    db $00
    dw $0060, $5725, $ff38, $00d0, $0010
    db $00
    dw $0060, $5795, $ffc8, $ffa0, $0018
    db $a9
    dw $00bb, $001c, $0290, $00d0, $0010
    db $a9
    dw $00bd, $002c, $ffd0, $fe38, $0018
    db $f2
    dw $00ed, $0120, $ff50, $0008, $0000
    db $f3
    dw $00ec, $0230, $fde0, $0008, $0000
    db $ff
    
Room61TransitionTable:: ; 0x57e3
    db $40
    dw $0061, $571a, $fd30, $fff0, $0008
    db $00
    dw $0061, $5853, $fdc0, $ffa0, $0000
    db $00
    dw $0061, $581b, $0080, $0060, $0010
    db $40
    dw $0061, $58b7, $02d0, $0000, $0018
    db $a9
    dw $00f8, $0000, $02a0, $0060, $0010
    db $ff
    
Room62TransitionTable:: ; 0x581b
    db $00
    dw $0062, $57f9, $fee0, $00d0, $0010
    db $98
    dw $00a6, $ff50, $ffe0, $0000, $0000
    db $98
    dw $00a7, $ffb0, $fee8, $0000, $0000
    db $98
    dw $00a8, $0038, $0080, $0000, $0000
    db $a9
    dw $00be, $0011, $fe70, $ff30, $0008
    db $ff
    
Room63TransitionTable:: ; 0x5853
    db $00
    dw $0063, $57ee, $0130, $0120, $0018
    db $a8
    dw $00bf, $0028, $fef0, $fea0, $0008
    db $a9
    dw $00c0, $0043, $00e0, $ff78, $0018
    db $a9
    dw $00c1, $003a, $ff90, $0128, $0010
    db $ef
    dw $00ff, $fee8, $0080, $0010, $0000
    db $a9
    dw $00f8, $0000, $fed0, $0080, $0008
    db $a9
    dw $00f9, $0000, $0130, $0068, $0018
    db $a9
    dw $00fa, $0000, $0000, $fe70, $0000
    db $ff
    
Room64TransitionTable:: ; 0x58ac
    db $00
    dw $0064, $59de, $0090, $ff08, $0010
    db $40
    dw $0064, $5804, $ff08, $0330, $0018
    db $ff
    
Room65TransitionTable:: ; 0x58c3
    db $88
    dw $0065, $59c7, $0378, $00d0, $0010
    db $00
    dw $0065, $596b, $fb30, $ffa0, $0008
    db $00
    dw $0065, $5730, $0000, $fc30, $0000
    db $00
    dw $0065, $591d, $0000, $0008, $0010
    db $00
    dw $0065, $578a, $0048, $fd70, $0018
    db $98
    dw $00a9, $0200, $ffc8, $0000, $0000
    db $98
    dw $00aa, $fe08, $ffc8, $0000, $0000
    db $a9
    dw $00f8, $0000, $0308, $0078, $0008
    db $ff
    
Room66TransitionTable:: ; 0x591c
    db $ff
    
Room67TransitionTable:: ; 0x591d
    db $00
    dw $0067, $58e4, $0100, $ff30, $0018
    db $a8
    dw $00c2, $0028, $ff48, $00c0, $0008
    db $a8
    dw $00c3, $0022, $0050, $00c0, $0018
    db $a9
    dw $00c4, $0053, $00a8, $0108, $0010
    db $a9
    dw $00c5, $002c, $ff68, $ffe8, $0008
    db $90
    dw $0000, $0000, $0100, $0108, $0010
    db $91
    dw $0000, $0000, $ff98, $fec0, $0008
    db $ff
    
Room68TransitionTable:: ; 0x596b
    db $00
    dw $0068, $58ce, $0038, $fd30, $0000
    db $00
    dw $0068, $598d, $0318, $01e8, $0010
    db $a9
    dw $00f8, $0000, $fd08, $02f8, $0008
    db $ff
    
Room69TransitionTable:: ; 0x598d
    db $00
    dw $0069, $5976, $0370, $fdb0, $0000
    db $00
    dw $0069, $59a4, $00c8, $0248, $0010
    db $ff
    
Room6aTransitionTable:: ; 0x59a4
    db $00
    dw $006a, $5998, $0030, $fe30, $0000
    db $a9
    dw $00f8, $0000, $fde0, $0148, $0000
    db $a9
    dw $00f9, $0000, $02a8, $0098, $0008
    db $ff
    
Room6bTransitionTable:: ; 0x59c6
    db $ff
    
Room6cTransitionTable:: ; 0x59c7
    db $89
    dw $006c, $58c3, $02d0, $ff00, $0018
    db $00
    dw $006c, $59ea, $fda0, $01d0, $0010
    db $ff
    
Room6dTransitionTable:: ; 0x59de
    db $00
    dw $006d, $58ac, $ffd8, $0100, $0010
    db $ff
    
Room6eTransitionTable:: ; 0x59ea
    db $00
    dw $006e, $59d2, $fd90, $fd38, $0000
    db $a9
    dw $00f8, $0000, $fea0, $0350, $0010
    db $a9
    dw $00f8, $0000, $fec0, $0350, $0010
    db $a9
    dw $00f8, $0000, $fee0, $0350, $0010
    db $ff
    
Room6fTransitionTable:: ; 0x5a17
    db $00
    dw $006f, $4479, $fca0, $feb0, $0000
    db $a9
    dw $00cf, $0045, $fc30, $00d0, $0008
    db $a9
    dw $00f8, $0000, $fec8, $ffd0, $0010
    db $a9
    dw $00f9, $0000, $ff88, $ffd0, $0010
    db $a9
    dw $00fa, $0000, $0050, $ffd0, $0010
    db $a9
    dw $00fb, $0000, $00e8, $0038, $0000
    db $a9
    dw $00fc, $0000, $0070, $0038, $0000
    db $a9
    dw $00fd, $0000, $ff70, $0038, $0000
    db $a9
    dw $00fe, $0000, $fe30, $0038, $0000
    db $a9
    dw $00f7, $0000, $fc30, $00d0, $0008
    db $ff
    
Room70TransitionTable:: ; 0x5a86
    db $00
    dw $0070, $452b, $ff88, $00f0, $0010
    db $a8
    dw $00c8, $001e, $0090, $ff38, $0000
    db $a8
    dw $00c9, $000e, $fff8, $ff80, $0000
    db $a8
    dw $00ca, $003e, $00f0, $ffb0, $0000
    db $a8
    dw $00cb, $0043, $00d0, $0028, $0000
    db $90
    dw $0000, $0000, $00f0, $00f0, $0010
    db $91
    dw $0000, $0000, $ff78, $ff10, $0000
    db $a9
    dw $00f0, $0000, $0068, $ff10, $0000
    db $a9
    dw $00f1, $0000, $00d0, $ff10, $0000
    db $ff
    
Room71TransitionTable:: ; 0x5aea
    db $00
    dw $0071, $4484, $0050, $00d0, $0010
    db $a9
    dw $00cc, $002c, $fff8, $ff70, $0000
    db $a9
    dw $00cd, $000c, $ff80, $fff8, $0008
    db $a9
    dw $00f8, $0000, $ffd8, $ff70, $0000
    db $ff
    
Room72TransitionTable:: ; 0x5b17
    db $01
    dw $0000, $0000, $0000, $0000, $0000
    db $a9
    dw $00ce, $0055, $ffb0, $ff48, $0000
    db $98
    dw $00c8, $0398, $0078, $0000, $0000
    db $ff

Room73TransitionTable:: ; 0x5b39
    db $00
    dw $0073, $45bc, $fdc8, $fe80, $0018
    db $00
    dw $0073, $4804, $fee8, $0110, $0010
    db $8b
    dw $0073, $491c, $0398, $ffa8, $0008
    db $ff
    
bank0c5_5b5d:
    dw $40e8, $0000
    dw $4136, $0000
    dw $40f3, $0001
    dw $4257, $0001
    dw $40fe, $0002
    dw $45d3, $0002
    dw $4109, $0003
    dw $4895, $0003
    dw $4141, $0004
    dw $42e7, $0004
    dw $41bb, $0005
    dw $43c6, $0005
    dw $41fe, $0006
    dw $4209, $0007
    dw $4563, $0007
    dw $4214, $0008
    dw $46b3, $0008
    dw $421f, $0009
    dw $43bb, $0009
    dw $422a, $000a
    dw $4340, $000a
    dw $4262, $000b
    dw $44c7, $000b
    dw $42fd, $000c
    dw $4399, $000c
    dw $4308, $000d
    dw $45b1, $000d
    dw $43d1, $000e
    dw $4409, $000e
    dw $43dc, $000f
    dw $4e38, $000f
    dw $4436, $0010
    dw $44d2, $0010
    dw $4441, $0011
    dw $4622, $0011
    dw $444c, $0012
    dw $4600, $0012
    dw $4457, $0013
    dw $47aa, $0013
    dw $4462, $0014
    dw $449a, $0014
    dw $4479, $0015
    dw $5a17, $0015
    dw $4484, $0016
    dw $5aea, $0016
    dw $448f, $0017
    dw $4520, $0017
    dw $44a5, $0018
    dw $4691, $0018
    dw $452b, $0019
    dw $5a86, $0019
    dw $4536, $001a
    dw $4aac, $001a
    dw $45bc, $001b
    dw $5b39, $001b
    dw $45c8, $001c
    dw $4745, $001c
    dw $469c, $001d
    dw $46ec, $001d
    dw $46e0, $001e
    dw $4750, $001e
    dw $477d, $001f
    dw $47b5, $001f
    dw $47c1, $0020
    dw $4c49, $0020
    dw $47cc, $0021
    dw $47f9, $0021
    dw $4804, $0022
    dw $5b44, $0022
    dw $483c, $0023
    dw $4874, $0023
    dw $4847, $0024
    dw $4e43, $0024
    dw $487f, $0025
    dw $4954, $0025
    dw $488a, $0026
    dw $4b80, $0026
    dw $48a1, $0027
    dw $48ac, $0028
    dw $48ce, $0029
    dw $4a96, $0029
    dw $48d9, $002a
    dw $4c60, $002a
    dw $48fb, $002b
    dw $4d58, $002b
    dw $4906, $002c
    dw $4dd3, $002c
    dw $4911, $002d
    dw $4ad9, $002d
    dw $491c, $002e
    dw $5b4f, $002e
    dw $495f, $002f
    dw $4cfe, $002f
    dw $4981, $0030
    dw $4cba, $0030
    dw $49ae, $0031
    dw $4b6a, $0031
    dw $4a80, $0032
    dw $4a8b, $0033
    dw $4cdc, $0033
    dw $4aa1, $0034
    dw $4ae4, $0035
    dw $4e22, $0035
    dw $4b27, $0036
    dw $4ce7, $0036
    dw $4b54, $0037
    dw $4ba2, $0037
    dw $4bf0, $0038
    dw $4cd1, $0038
    dw $4c54, $0039
    dw $4c6b, $0039
    dw $4c77, $003a
    dw $4caf, $003a
    dw $4d15, $003b
    dw $4e2d, $003b
    dw $4d63, $003c
    dw $4da6, $003c
    dw $4d6e, $003d
    dw $4e00, $003d
    dw $4e70, $003e
    dw $4f00, $003e
    dw $4e86, $003f
    dw $4f22, $003f
    dw $4ef5, $0040
    dw $4f2d, $0040
    dw $4f38, $0041
    dw $4f7c, $0041
    dw $4f43, $0042
    dw $5073, $0042
    dw $560d, $0043
    dw $4f87, $0044
    dw $51fc, $0044
    dw $4fbf, $0045
    dw $5046, $0045
    dw $4fec, $0046
    dw $5175, $0046
    dw $500e, $0047
    dw $5089, $0047
    dw $5019, $0048
    dw $51a2, $0048
    dw $5051, $0049
    dw $51da, $0049
    dw $503b, $004a
    dw $50ee, $004a
    dw $507e, $004b
    dw $513d, $004b
    dw $50a0, $004c
    dw $51c4, $004c
    dw $50e3, $004d
    dw $5645, $004d
    dw $5148, $004e
    dw $5180, $004e
    dw $5153, $004f
    dw $516a, $004f
    dw $51ad, $0050
    dw $51cf, $0050
    dw $51e6, $0051
    dw $53a6, $0051
    dw $51f1, $0052
    dw $5384, $0052
    dw $5207, $0053
    dw $524a, $0053
    dw $5212, $0054
    dw $52ba, $0054
    dw $5255, $0055
    dw $5298, $0055
    dw $52f2, $0056
    dw $532a, $0056
    dw $52fd, $0057
    dw $55eb, $0057
    dw $5308, $0058
    dw $5592, $0058
    dw $5313, $0059
    dw $5357, $0059
    dw $531f, $005a
    dw $53f4, $005a
    dw $53b1, $005b
    dw $5490, $005b
    dw $53bc, $005c
    dw $53de, $005c
    dw $53e9, $005d
    dw $5437, $005d
    dw $546f, $005e
    dw $550b, $005e
    dw $547a, $005f
    dw $557b, $005f
    dw $5485, $0060
    dw $54a7, $0060
    dw $5516, $0061
    dw $5559, $0061
    dw $5521, $0062
    dw $5570, $0062
    dw $5602, $0063
    dw $562f, $0063
    dw $563a, $0064
    dw $565c, $0064
    dw $5651, $0065
    dw $5673, $0065
    dw $567e, $0066
    dw $570f, $0066
    dw $5689, $0067
    dw $56cc, $0067
    dw $5704, $0068
    dw $5768, $0068
    dw $571a, $0069
    dw $57e3, $0069
    dw $5725, $006a
    dw $57a0, $006a
    dw $5730, $006b
    dw $58d9, $006b
    dw $578a, $006c
    dw $58ef, $006c
    dw $5795, $006d
    dw $57ab, $006d
    dw $57ee, $006e
    dw $5853, $006e
    dw $57f9, $006f
    dw $581b, $006f
    dw $5804, $0070
    dw $58b7, $0070
    dw $58ac, $0071
    dw $59de, $0071
    dw $58c3, $0072
    dw $59c7, $0072
    dw $58ce, $0073
    dw $596b, $0073
    dw $58e4, $0074
    dw $591d, $0074
    dw $5976, $0075
    dw $598d, $0075
    dw $5998, $0076
    dw $59a4, $0076
    dw $59d2, $0077
    dw $4e7b, $0078
    dw $46f7, $0078
    dw $4b75, $0079
    dw $4bad, $007a
    dw $4ca4, $007b
    dw $42f2, $007c
    dw $4b5f, $007d
    dw $59ea, $007e
    dw $4f65, $007f

bank0c5_5f23:
    db $00, $00

bank0c5_5f25: ; 0x5f25
    db $ff, $ff, $00, $ff, $ff, $ff, $00, $00, $ff, $ff, $ff, $00, $00, $00, $00, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $00, $ff, $00, $00, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $00, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $00
    db $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $00, $ff, $ff
    db $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $ff, $ff, $00, $ff, $00, $00
    db $00, $ff, $00, $ff, $ff, $ff, $ff, $00, $ff, $ff, $00, $00, $ff, $ff, $ff, $00
    db $00, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $00, $00, $00, $00, $00

init_flag_player_cutscene: ; 0x5fa5
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    
init_picked_item_base: ; 0x6073
    db $ff, $00, $ff, $ff, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $00
    db $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00
    db $ff, $ff, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $00, $ff, $00
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

bank0c5_6173: ; 0x6173
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff
    db $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $ff, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $00, $ff, $ff, $00, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff

bank0c5_6273:
    ld de, bank0c5_5f25
    ld hl, $c400
    ld bc, $0080
    call memcpy_bank00
    ld de, init_flag_player_cutscene
    ld hl, FLAG_PLAYER_CUTSCENE_BASE
    ld bc, $0080
    call memcpy_bank00
    ld de, init_picked_item_base
    ld hl, PICKED_ITEM_BASE
    ld bc, $0100
    call memcpy_bank00
    ld de, bank0c5_6173
    ld hl, $c600
    ld bc, $0100
    call memcpy_bank00
    ld hl, $c186
    ld b, $04

jr_0c5_62a8:
    ld [hl], $ff
    inc hl
    dec b
    jr nz, jr_0c5_62a8

    ld a, [SELECTED_CHARACTER_INDEX]
    or a
    jr z, jr_0c5_62c4

    ld a, $ff
    ld [$c449], a
    ld [$c4a7], a
    xor a
    ld [$c574], a
    ld [$c57f], a
    ret


jr_0c5_62c4:
    ret

bank0c5_62c5:
    xor a
    ld [GAME_STATE], a
    ld a, [$c105]
    or a
    ret nz

    ld a, [ROOM_NUMBER]
    ld l, a
    ld a, [ROOM_NUMBER + 1]
    ld h, a
    add hl, hl
    ld de, $4000
    add hl, de
    ld a, [hl]
    inc hl
    ld h, [hl]
    ld l, a

Loop_0c5_62df:
jr_0c5_62df:
    ld a, [hl]
    cp $ff ;; terminate
    jr z, jr_0c5_6313

    cp $90
    jp c, Jump_0c5_6360

    cp $91
    jp z, Jump_0c5_6390

    cp $90
    jp z, Jump_0c5_6378

    cp $98
    jp z, Jump_0c5_6359

    cp $a0
    jp z, Jump_0c5_6359

    cp $95
    jp z, Jump_0c5_6359

    cp $a8
    jp z, Jump_0c5_631b

    cp $a9
    jp z, Jump_0c5_6341

    cp $e0
    jp nc, Jump_0c5_6314

    jr jr_0c5_62df

jr_0c5_6313:
    ret


Jump_0c5_6314:
    ld de, $000b
    add hl, de
    jp Loop_0c5_62df


Jump_0c5_631b:
    ld a, [$c306]
    cp $07
    jr z, jr_0c5_633a

    ld de, $0005
    add hl, de
    call Call_0c5_6467
    or a
    jr z, jr_0c5_6333

    ld de, $0006
    add hl, de
    jp Loop_0c5_62df


jr_0c5_6333:
    ld de, $0006
    add hl, de
    jp Loop_0c5_62df


jr_0c5_633a:
    ld de, $000b
    add hl, de
    jp Loop_0c5_62df


Jump_0c5_6341:
    ld de, $0005
    add hl, de
    call Call_0c5_63a8
    or a
    jr z, jr_0c5_6352

    ld de, $0006
    add hl, de
    jp Loop_0c5_62df


jr_0c5_6352:
    ld de, $0006
    add hl, de
    jp Loop_0c5_62df


Jump_0c5_6359:
    ld de, $000b
    add hl, de
    jp Loop_0c5_62df


Jump_0c5_6360:
    ld de, $0005
    add hl, de
    call Call_0c5_6519
    or a
    jr z, jr_0c5_6371

    ld de, $0006
    add hl, de
    jp Loop_0c5_62df


jr_0c5_6371:
    ld de, $0006
    add hl, de
    jp Loop_0c5_62df


Jump_0c5_6378:
    ld de, $0005
    add hl, de
    call Call_0c5_6638
    or a
    jr z, jr_0c5_6389

    ld de, $0006
    add hl, de
    jp Loop_0c5_62df


jr_0c5_6389:
    ld de, $0006
    add hl, de
    jp Loop_0c5_62df


Jump_0c5_6390:
    ld de, $0005
    add hl, de
    call Call_0c5_66c8
    or a
    jr z, jr_0c5_63a1

    ld de, $0006
    add hl, de
    jp Loop_0c5_62df


jr_0c5_63a1:
    ld de, $0006
    add hl, de
    jp Loop_0c5_62df


Call_0c5_63a8:
    ld a, [GAME_STATE]
    cp $05
    jr z, jr_0c5_63b3

    or a
    jp nz, Jump_0c5_6453

jr_0c5_63b3:
    ld de, $0004
    add hl, de
    ld a, [hl]
    ld [$c1f5], a
    ld de, $fffc
    add hl, de
    ld a, [PLAYER_POS_Y_VAR]
    sub [hl]
    ld c, a
    inc hl
    ld a, [PLAYER_POS_Y_VAR + 1]
    sbc [hl]
    inc hl
    or a
    jr z, jr_0c5_63d8

    cp $ff
    jr z, jr_0c5_63df

jr_0c5_63d1:
    ld de, $fffe
    add hl, de
    jp Jump_0c5_6453


jr_0c5_63d8:
    ld a, c
    cp $40
    jr nc, jr_0c5_63d1

    jr jr_0c5_63e4

jr_0c5_63df:
    ld a, c
    cp $c0
    jr c, jr_0c5_63d1

jr_0c5_63e4:
    ld a, [PLAYER_POS_X_VAR]
    sub [hl]
    ld c, a
    inc hl
    ld a, [PLAYER_POS_X_VAR + 1]
    sbc [hl]
    inc hl
    or a
    jr z, jr_0c5_63fd

    cp $ff
    jr z, jr_0c5_6404

jr_0c5_63f6:
    ld de, $fffc
    add hl, de
    jp Jump_0c5_6453


jr_0c5_63fd:
    ld a, c
    cp $40
    jr nc, jr_0c5_63f6

    jr jr_0c5_6409

jr_0c5_6404:
    ld a, c
    cp $c0
    jr c, jr_0c5_63f6

jr_0c5_6409:
    ld a, [PLAYER_POS_ROTATE]
    ld c, a
    ld a, [hl]
    ld de, $fffc
    add hl, de
    add $10
    sub c
    and $1f
    cp $08
    jr c, jr_0c5_6422

    cp $18
    jr nc, jr_0c5_6422

    jp Jump_0c5_6453


jr_0c5_6422:
    ld a, [$c100]
    and $01
    jr z, jr_0c5_6450

    ld a, [$c306]
    cp $00
    jr nz, jr_0c5_6450

    ld de, $fffe
    add hl, de
    ld a, [hl]
    ld [$c1f4], a
    ld de, $fffe
    add hl, de
    ld a, [hl]
    ld [PICKED_ITEM_INDEX], a
    call Call_0c5_6a80
    ld de, $0004
    add hl, de
    or a
    jp z, Jump_0c5_6455

    ld a, $03
    ld [GAME_STATE], a

jr_0c5_6450:
    ld a, $ff
    ret


Jump_0c5_6453:
    xor a
    ret


Jump_0c5_6455:
    ld a, [PICKED_ITEM_INDEX]
    ld [$c182], a
    ld a, $ff
    ld [$c183], a
    ld a, $05
    ld [GAME_STATE], a
    xor a
    ret


Call_0c5_6467:
    ld a, [GAME_STATE]
    cp $05
    jr z, jr_0c5_6472

    or a
    jp nz, Jump_0c5_6505

jr_0c5_6472:
    ld de, $0004
    add hl, de
    ld a, [hl]
    ld [$c1f5], a
    ld de, $fffc
    add hl, de
    ld a, [PLAYER_POS_Y_VAR]
    sub [hl]
    ld c, a
    inc hl
    ld a, [PLAYER_POS_Y_VAR + 1]
    sbc [hl]
    inc hl
    or a
    jr z, jr_0c5_6497

    cp $ff
    jr z, jr_0c5_649e

jr_0c5_6490:
    ld de, $fffe
    add hl, de
    jp Jump_0c5_6505


jr_0c5_6497:
    ld a, c
    cp $20
    jr nc, jr_0c5_6490

    jr jr_0c5_64a3

jr_0c5_649e:
    ld a, c
    cp $e0
    jr c, jr_0c5_6490

jr_0c5_64a3:
    ld a, [PLAYER_POS_X_VAR]
    sub [hl]
    ld c, a
    inc hl
    ld a, [PLAYER_POS_X_VAR + 1]
    sbc [hl]
    inc hl
    or a
    jr z, jr_0c5_64bc

    cp $ff
    jr z, jr_0c5_64c3

jr_0c5_64b5:
    ld de, $fffc
    add hl, de
    jp Jump_0c5_6505


jr_0c5_64bc:
    ld a, c
    cp $20
    jr nc, jr_0c5_64b5

    jr jr_0c5_64c8

jr_0c5_64c3:
    ld a, c
    cp $e0
    jr c, jr_0c5_64b5

jr_0c5_64c8:
    ld de, $fffc
    add hl, de
    ld a, [$c100]
    and $01
    jr z, jr_0c5_6502

    ld a, [$c306]
    cp $00
    jr nz, jr_0c5_6502

    ld de, $fffe
    add hl, de
    ld a, [hl]
    ld [$c1b8], a
    ld de, $fffe
    add hl, de
    ld a, [hl]
    ld [PICKED_ITEM_INDEX], a
    call Call_0c5_6a80
    ld de, $0004
    add hl, de
    or a
    jp z, Jump_0c5_6507

    ld a, $07
    ld [PLAYER_STATE], a
    xor a
    ld [PLAYER_ANIM_FRAME], a
    ld [GAME_STATE], a
    ret


jr_0c5_6502:
    ld a, $ff
    ret


Jump_0c5_6505:
    xor a
    ret


Jump_0c5_6507:
    ld a, [PICKED_ITEM_INDEX]
    ld [$c182], a
    ld a, $ff
    ld [$c183], a
    ld a, $05
    ld [GAME_STATE], a
    xor a
    ret


Call_0c5_6519:
    ld a, [GAME_STATE]
    or a
    jp nz, PlayerNoTransition

    ld de, $0004
    add hl, de
    ld a, [hl]
    ld [$c1e4], a
    ld de, $fffc
    add hl, de
    ld a, [PLAYER_POS_Y_VAR]
    sub [hl]
    ld c, a
    inc hl
    ld a, [PLAYER_POS_Y_VAR + 1]
    sbc [hl]
    inc hl
    or a
    jr z, jr_0c5_6545

    cp $ff
    jr z, jr_0c5_6556

jr_0c5_653e:
    ld de, $fffe
    add hl, de
    jp PlayerNoTransition


jr_0c5_6545:
    ld b, $08
    ld a, [$c1e4]
    and $0f
    jr nz, jr_0c5_6550

    ld b, $80

jr_0c5_6550:
    ld a, c
    cp b
    jr nc, jr_0c5_653e

    jr jr_0c5_6565

jr_0c5_6556:
    ld b, $f8
    ld a, [$c1e4]
    and $0f
    jr nz, jr_0c5_6561

    ld b, $80

jr_0c5_6561:
    ld a, c
    cp b
    jr c, jr_0c5_653e

jr_0c5_6565:
    ld a, [PLAYER_POS_X_VAR]
    sub [hl]
    ld c, a
    inc hl
    ld a, [PLAYER_POS_X_VAR + 1]
    sbc [hl]
    inc hl
    or a
    jr z, jr_0c5_657e

    cp $ff
    jr z, jr_0c5_658f

jr_0c5_6577:
    ld de, $fffc
    add hl, de
    jp PlayerNoTransition


jr_0c5_657e:
    ld b, $80
    ld a, [$c1e4]
    and $0f
    jr nz, jr_0c5_6589

    ld b, $08

jr_0c5_6589:
    ld a, c
    cp b
    jr nc, jr_0c5_6577

    jr jr_0c5_659e

jr_0c5_658f:
    ld b, $80
    ld a, [$c1e4]
    and $0f
    jr nz, jr_0c5_659a

    ld b, $f8

jr_0c5_659a:
    ld a, c
    cp b
    jr c, jr_0c5_6577

jr_0c5_659e:
    ld a, [PLAYER_POS_ROTATE]
    ld c, a
    ld a, [hl]
    ld de, $fffc
    add hl, de
    add $10
    sub c
    and $1f
    cp $08
    jr c, PlayerTransitionNewRoom

    cp $18
    jr nc, PlayerTransitionNewRoom

    jp PlayerNoTransition


PlayerTransitionNewRoom:
    ld a, [$c100]
    and $01
    jr z, jr_0c5_661d

    ld a, [$c306]
    cp $03
    jr z, jr_0c5_661d

    cp $05
    jr z, jr_0c5_661d

    cp $04
    jr z, jr_0c5_661d

    ld de, $fffb
    add hl, de
    call Call_0c5_674a
    or a
    jp z, Jump_0c5_6622

    ld a, [hl]
    ld [DOOR_TRANSITION_TYPE], a
    srl a
    srl a
    srl a
    ld [DOOR_INDEX_LEFT_BITS], a
    ld a, [hl]
    and $07
    ld [DOOR_PALETTE_INDEX], a
    ; register DE has base address of area before entering door
    ; HL still points to area before entering door
    ld de, $0003
    add hl, de

    ; load new address of new area after entering door into register DE
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    
    ; bytes 1-2 for room number
    inc de
    ld a, [de]
    ld [ROOM_NUMBER], a
    inc de
    ld a, [de]
    ld [ROOM_NUMBER + 1], a
    inc de

    ; bytes 3-4 has address that points to previous area 
    ; skip address
    inc de
    inc de
    
    ; bytes 5-6 for new player y in the room
    ld a, [de]
    ld [PLAYER_POS_Y_VAR], a
    inc de
    ld a, [de]
    ld [PLAYER_POS_Y_VAR + 1], a
    inc de
    ; bytes 7-8 for new player x in the room
    ld a, [de]
    ld [PLAYER_POS_X_VAR], a
    inc de
    ld a, [de]
    ld [PLAYER_POS_X_VAR + 1], a
    inc de
    ; byte 9 for new player rotation
    ld a, [de]
    ld [PLAYER_POS_ROTATE], a
    ; set state to door transition
    ld a, $01
    ld [GAME_STATE], a

jr_0c5_661d:
    ld a, $ff
    ret


PlayerNoTransition:
    xor a
    ret


Jump_0c5_6622:
    ld de, $0005
    add hl, de
    ld a, $ff
    ld [$c182], a
    ld a, [$c1ff]
    ld [$c183], a
    ld a, $05
    ld [GAME_STATE], a
    xor a
    ret


Call_0c5_6638:
    ld a, [GAME_STATE]
    cp $05
    jr z, jr_0c5_6643

    or a
    jp nz, Jump_0c5_66c6

jr_0c5_6643:
    ld a, [PLAYER_POS_Y_VAR]
    sub [hl]
    ld c, a
    inc hl
    ld a, [PLAYER_POS_Y_VAR + 1]
    sbc [hl]
    inc hl
    or a
    jr z, jr_0c5_665c

    cp $ff
    jr z, jr_0c5_6663

jr_0c5_6655:
    ld de, $fffe
    add hl, de
    jp Jump_0c5_66c6


jr_0c5_665c:
    ld a, c
    cp $40
    jr nc, jr_0c5_6655

    jr jr_0c5_6668

jr_0c5_6663:
    ld a, c
    cp $c0
    jr c, jr_0c5_6655

jr_0c5_6668:
    ld a, [PLAYER_POS_X_VAR]
    sub [hl]
    ld c, a
    inc hl
    ld a, [PLAYER_POS_X_VAR + 1]
    sbc [hl]
    inc hl
    or a
    jr z, jr_0c5_6681

    cp $ff
    jr z, jr_0c5_6688

jr_0c5_667a:
    ld de, $fffc
    add hl, de
    jp Jump_0c5_66c6


jr_0c5_6681:
    ld a, c
    cp $40
    jr nc, jr_0c5_667a

    jr jr_0c5_668d

jr_0c5_6688:
    ld a, c
    cp $c0
    jr c, jr_0c5_667a

jr_0c5_668d:
    ld a, [PLAYER_POS_ROTATE]
    ld c, a
    ld a, [hl]
    ld de, $fffc
    add hl, de
    add $10
    sub c
    and $1f
    cp $04
    jr c, jr_0c5_66a6

    cp $1c
    jr nc, jr_0c5_66a6

    jp Jump_0c5_66c6


jr_0c5_66a6:
    ld a, [$c100]
    and $01
    jr z, jr_0c5_66c3

    ld a, [$c306]
    cp $03
    jr z, jr_0c5_66c3

    ld a, $ff
    ld [$c182], a
    ld a, $80
    ld [$c183], a
    ld a, $05
    ld [GAME_STATE], a

jr_0c5_66c3:
    ld a, $ff
    ret


Jump_0c5_66c6:
    xor a
    ret


Call_0c5_66c8:
    ld a, [GAME_STATE]
    or a
    jp nz, Jump_0c5_6748

    ld a, [PLAYER_POS_Y_VAR]
    sub [hl]
    ld c, a
    inc hl
    ld a, [PLAYER_POS_Y_VAR + 1]
    sbc [hl]
    inc hl
    or a
    jr z, jr_0c5_66e8

    cp $ff
    jr z, jr_0c5_66ef

jr_0c5_66e1:
    ld de, $fffe
    add hl, de
    jp Jump_0c5_6748


jr_0c5_66e8:
    ld a, c
    cp $40
    jr nc, jr_0c5_66e1

    jr jr_0c5_66f4

jr_0c5_66ef:
    ld a, c
    cp $c0
    jr c, jr_0c5_66e1

jr_0c5_66f4:
    ld a, [PLAYER_POS_X_VAR]
    sub [hl]
    ld c, a
    inc hl
    ld a, [PLAYER_POS_X_VAR + 1]
    sbc [hl]
    inc hl
    or a
    jr z, jr_0c5_670d

    cp $ff
    jr z, jr_0c5_6714

jr_0c5_6706:
    ld de, $fffc
    add hl, de
    jp Jump_0c5_6748


jr_0c5_670d:
    ld a, c
    cp $40
    jr nc, jr_0c5_6706

    jr jr_0c5_6719

jr_0c5_6714:
    ld a, c
    cp $c0
    jr c, jr_0c5_6706

jr_0c5_6719:
    ld a, [PLAYER_POS_ROTATE]
    ld c, a
    ld a, [hl]
    ld de, $fffc
    add hl, de
    add $10
    sub c
    and $1f
    cp $04
    jr c, jr_0c5_6732

    cp $1c
    jr nc, jr_0c5_6732

    jp Jump_0c5_6748


jr_0c5_6732:
    ld a, [$c100]
    and $01
    jr z, jr_0c5_6745

    ld a, [$c306]
    cp $03
    jr z, jr_0c5_6745

    ld a, $04
    ld [GAME_STATE], a

jr_0c5_6745:
    ld a, $ff
    ret


Jump_0c5_6748:
    xor a
    ret


Call_0c5_674a:
    push bc
    push de
    push hl
    ld e, l
    ld d, h
    ld hl, $5b5b

jr_0c5_6752:
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

Call_0c5_6756:
    ld a, c
    or b
    jp z, Jump_0c5_67f5

    ld a, e
    cp c
    jr nz, jr_0c5_6776

    ld a, d
    cp b
    jr nz, jr_0c5_6776

    ld a, [hl]
    ld [$c1ff], a
    ld e, a
    ld d, $00
    ld hl, $c400
    add hl, de
    ld a, [hl]
    or a
    jr z, jr_0c5_677a

    pop hl
    pop de
    pop bc
    ret


jr_0c5_6776:
    inc hl
    inc hl
    jr jr_0c5_6752

jr_0c5_677a:
    ld a, [ROOM_NUMBER]
    or a
    jp z, Jump_0c5_67f7

    cp $03
    jp z, Jump_0c5_680d

    cp $04
    jp z, Jump_0c5_6844

    cp $05
    jp z, Jump_0c5_686d

    cp $08
    jp z, Jump_0c5_6896

    cp $0a
    jp z, Jump_0c5_68ac

    cp $0b
    jp z, Jump_0c5_68c2

    cp $0f
    jp z, Jump_0c5_68d8

    cp $12
    jp z, Jump_0c5_68e5

    cp $1e
    jp z, Jump_0c5_68fb

    cp $1f
    jp z, Jump_0c5_690d

    cp $24
    jp z, Jump_0c5_6928

    cp $27
    jp z, Jump_0c5_694c

    cp $2a
    jp z, Jump_0c5_6974

    cp $2d
    jp z, Jump_0c5_698a

    cp $34
    jp z, Jump_0c5_69a3

    cp $35
    jp z, Jump_0c5_69b4

    cp $4b
    jp z, Jump_0c5_69ca

    cp $4f
    jp z, Jump_0c5_69e5

    cp $52
    jp z, Jump_0c5_6a0d

    cp $5e
    jp z, Jump_0c5_6a28

    cp $60
    jp z, Jump_0c5_6a43

Jump_0c5_67ea:
    xor a
    pop hl
    pop de
    pop bc
    ret


Jump_0c5_67ef:
    ld a, $ff
    pop hl
    pop de
    pop bc
    ret


Jump_0c5_67f5:
jr_0c5_67f5:
    jr jr_0c5_67f5

Jump_0c5_67f7:
    ld a, e
    cp $02
    jr z, jr_0c5_67ff

    jp Jump_0c5_67ea


jr_0c5_67ff:
    ld c, $02
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_680d:
    ld a, e
    cp $06
    jr z, jr_0c5_6819

    cp $07
    jr z, jr_0c5_6823

    jp Jump_0c5_67ea


jr_0c5_6819:
    ld [hl], $ff
    ld a, $ff
    ld [$c47c], a
    jp Jump_0c5_67ef


jr_0c5_6823:
    ld a, [PLAYER_CHARACTER_MODEL]
    cp CHARACTER_ID_JILL
    jr z, jr_0c5_6838

    ld c, $42
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


jr_0c5_6838:
    ld a, [FLAG_PLAYER_CUTSCENE_c484]
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_6844:
    ld a, e
    cp $0b
    jr z, jr_0c5_684c

    jp Jump_0c5_67ea


jr_0c5_684c:
    ld a, [PLAYER_CHARACTER_MODEL]
    cp CHARACTER_ID_JILL
    jr z, jr_0c5_6861

    ld c, $42
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


jr_0c5_6861:
    ld a, [FLAG_PLAYER_CUTSCENE_c484]
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_686d:
    ld a, e
    cp $0c
    jr z, jr_0c5_6875

    jp Jump_0c5_67ea


jr_0c5_6875:
    ld a, [PLAYER_CHARACTER_MODEL]
    cp CHARACTER_ID_JILL
    jr z, jr_0c5_688a

    ld c, $42
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


jr_0c5_688a:
    ld a, [FLAG_PLAYER_CUTSCENE_c484]
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_6896:
    ld a, e
    cp $0e
    jr z, jr_0c5_689e

    jp Jump_0c5_67ea


jr_0c5_689e:
    ld c, $02
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_68ac:
    ld a, e
    cp $11
    jr z, jr_0c5_68b4

    jp Jump_0c5_67ea


jr_0c5_68b4:
    ld c, $02
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_68c2:
    ld a, e
    cp $16
    jr z, jr_0c5_68ca

    jp Jump_0c5_67ea


jr_0c5_68ca:
    ld c, $2f
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_68d8:
    ld a, e
    cp $0d
    jr z, jr_0c5_68e0

    jp Jump_0c5_67ea


jr_0c5_68e0:
    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_68e5:
    ld a, e
    cp $11
    jr z, jr_0c5_68ed

    jp Jump_0c5_67ea


jr_0c5_68ed:
    ld c, $02
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_68fb:
    ld a, e
    cp $28
    jr z, jr_0c5_6903

    jp Jump_0c5_67ea


jr_0c5_6903:
    ld [hl], $ff
    ld a, $ff
    ld [$c47b], a
    jp Jump_0c5_67ef


Jump_0c5_690d:
    ld a, e
    cp $2a
    jr z, jr_0c5_6915

    jp Jump_0c5_67ea


jr_0c5_6915:
    ld c, $2f
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    ld a, $ff
    ld [$c47b], a
    jp Jump_0c5_67ef


Jump_0c5_6928:
    ld a, e
    cp $33
    jr z, jr_0c5_6934

    cp $32
    jr z, jr_0c5_6942

    jp Jump_0c5_67ea


jr_0c5_6934:
    ld c, $02
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


jr_0c5_6942:
    ld [hl], $ff
    ld a, $ff
    ld [$c47d], a
    jp Jump_0c5_67ef


Jump_0c5_694c:
    ld a, e
    cp $79
    jr z, jr_0c5_6958

    cp $31
    jr z, jr_0c5_6966

    jp Jump_0c5_67ea


jr_0c5_6958:
    ld c, $02
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


jr_0c5_6966:
    ld c, $02
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_6974:
    ld a, e
    cp $33
    jr z, jr_0c5_697c

    jp Jump_0c5_67ea


jr_0c5_697c:
    ld c, $02
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_698a:
    ld a, e
    cp $3a
    jr z, jr_0c5_6992

    jp Jump_0c5_67ea


jr_0c5_6992:
    ld c, $44
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld a, $00
    ld [de], a
    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_69a3:
    jp Jump_0c5_67ea


    ld c, $02
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_69b4:
    ld a, e
    cp $3b
    jr z, jr_0c5_69bc

    jp Jump_0c5_67ea


jr_0c5_69bc:
    ld c, $2f
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_69ca:
    ld a, e
    cp $59
    jr z, jr_0c5_69d2

    jp Jump_0c5_67ea


jr_0c5_69d2:
    ld c, $01
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld c, $01
    call Call_0c5_6a50
    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_69e5:
    ld a, e
    cp $5c
    jr z, jr_0c5_69ed

    jp Jump_0c5_67ea


jr_0c5_69ed:
    ld a, [SELECTED_CHARACTER_INDEX]
    or a
    jr z, jr_0c5_69fa

    ld a, [$c49a]
    or a
    jp z, Jump_0c5_67ea

jr_0c5_69fa:
    ld c, $3c
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld c, $3c
    call Call_0c5_6a50
    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_6a0d:
    ld a, e
    cp $5e
    jr z, jr_0c5_6a15

    jp Jump_0c5_67ea


jr_0c5_6a15:
    ld c, $5b
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld c, $5b
    call Call_0c5_6a50
    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_6a28:
    ld a, e
    cp $6b
    jr z, jr_0c5_6a30

    jp Jump_0c5_67ea


jr_0c5_6a30:
    ld c, $36
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld c, $36
    call Call_0c5_6a50
    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_6a43:
    ld a, e
    cp $6a
    jr z, jr_0c5_6a4b

    jp Jump_0c5_67ea


jr_0c5_6a4b:
    ld [hl], $ff
    jp Jump_0c5_67ef


Call_0c5_6a50:
    push bc
    push hl
    ld hl, $c1e7
    ld b, $06
    ld a, [SELECTED_CHARACTER_INDEX]
    or a
    jr z, jr_0c5_6a5f

    ld b, $08

jr_0c5_6a5f:
    ld a, [hl]
    cp c
    jr z, jr_0c5_6a6a

    inc hl
    dec b
    jr nz, jr_0c5_6a5f

jr_0c5_6a67:
    pop hl
    pop bc
    ret


jr_0c5_6a6a:
    ld [hl], $00
    jr jr_0c5_6a67

Call_0c5_6a6e:
    ld de, $c1e7
    ld b, $08

jr_0c5_6a73:
    ld a, [de]
    cp c
    jr z, jr_0c5_6a7d

    inc de
    dec b
    jr nz, jr_0c5_6a73

    xor a
    ret


jr_0c5_6a7d:
    ld a, $ff
    ret


Call_0c5_6a80:
    push bc
    push de
    push hl
    ld a, [PICKED_ITEM_INDEX]
    cp $07
    jr z, jr_0c5_6ab1

    cp $29
    jr z, jr_0c5_6aa2

    cp $55
    jr z, jr_0c5_6ac0

    cp $ad
    jr z, jr_0c5_6ace

jr_0c5_6a96:
    ld e, a
    ld d, $00
    ld hl, $c500
    add hl, de
    ld a, [hl]

jr_0c5_6a9e:
    pop hl
    pop de
    pop bc
    ret


jr_0c5_6aa2:
    ld a, [PLAYER_POS_Z_VAR]
    cp $10
    jr nc, jr_0c5_6aac

    xor a
    jr jr_0c5_6a9e

jr_0c5_6aac:
    ld a, [PICKED_ITEM_INDEX]
    jr jr_0c5_6a96

jr_0c5_6ab1:
    ld a, [PLAYER_POS_Z_VAR]
    cp $10
    jr nc, jr_0c5_6abb

    xor a
    jr jr_0c5_6a9e

jr_0c5_6abb:
    ld a, [PICKED_ITEM_INDEX]
    jr jr_0c5_6a96

jr_0c5_6ac0:
    ld a, [$c4c0]
    or a
    jr nz, jr_0c5_6ac9

    xor a
    jr jr_0c5_6a9e

jr_0c5_6ac9:
    ld a, [PICKED_ITEM_INDEX]
    jr jr_0c5_6a96

jr_0c5_6ace:
    ld a, [$c49b]
    or a
    jr nz, jr_0c5_6ad7

    xor a
    jr jr_0c5_6a9e

jr_0c5_6ad7:
    ld a, [PICKED_ITEM_INDEX]
    jr jr_0c5_6a96

bank0c5_6adc:
    ld hl, $c320
    ld b, $07

jr_0c5_6ae1:
    ld c, $20

jr_0c5_6ae3:
    ld [hl], $00
    inc hl
    dec c
    jr nz, jr_0c5_6ae3

    dec b
    jr nz, jr_0c5_6ae1

    xor a
    ld [$c1b1], a
    ld hl, $c320
    ld b, $07

jr_0c5_6af5:
    ld c, $20

jr_0c5_6af7:
    ld [hl], $00
    inc hl
    dec c
    jr nz, jr_0c5_6af7

    dec b
    jr nz, jr_0c5_6af5

    ld a, [ROOM_NUMBER]
    ld l, a
    ld a, [ROOM_NUMBER + 1]
    ld h, a
    add hl, hl
    ld de, $4000
    add hl, de
    ld a, [hl]
    inc hl
    ld h, [hl]
    ld l, a

Jump_0c5_6b11:
jr_0c5_6b11:
    ld a, [hl]
    cp $ff
    jr z, jr_0c5_6b30

    cp $98
    jp z, SpawnEntity

    cp $a0
    jp z, SpawnEntity

    cp $95
    jp z, SpawnEntity

    cp $e0
    jp nc, Jump_0c5_6bb4

    ld de, $000b
    add hl, de
    jr jr_0c5_6b11

jr_0c5_6b30:
    ret


SpawnEntity:
    push hl
    ld c, l
    ld b, h
    call Call_000_3eb8
    inc bc
    ld hl, $c600
    ld a, [bc]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr nz, jr_0c5_6b4d

    pop hl
    ld de, $000b
    add hl, de
    jr jr_0c5_6b11

jr_0c5_6b4d:
    dec bc
    
    ld hl, $0000
    add hl, de
    ld [hl], $80
    
    ; copy character id type at offset 0xb
    ld hl, $000b
    add hl, de
    ld a, [bc]
    ld [hl], a
    inc bc
    
    ; copy entity id to offset 0x0f and 0x10
    ld hl, $000f
    add hl, de
    ld a, [bc]
    ld [hl], a
    inc hl
    inc bc
    ld a, [bc]
    ld [hl], a
    inc hl
    inc bc
   
    ; copy entity y and x position to offset 0x11 - 0x14
    ld hl, $0011
    add hl, de
    ld a, [bc]
    ld [hl], a
    inc hl
    inc bc
    ; offset 0x12
    ld a, [bc]
    ld [hl], a
    inc hl
    inc bc
    ; offset 0x13
    ld a, [bc]
    ld [hl], a
    inc hl
    inc bc
    ; offset 0x14
    ld a, [bc]
    ld [hl], a
    inc hl
    inc bc
    
    ; set offsets 0x0c, 0x0d, 0x06 - 0x08 to zero
    ld hl, $000c
    add hl, de
    ld [hl], $00
    
    ld hl, $000d
    add hl, de
    ld [hl], $00

    ; offset 0x6 is for entity state (0x0 is init, 0x1 is moving, 0x2 is dead)
    ld hl, $0006
    add hl, de
    ld [hl], $00
    
    ; animation frame
    ld hl, $0007
    add hl, de
    ld [hl], $00
    
    ld hl, $0008
    add hl, de
    ld [hl], $00
    
    ; copy other values to offset 0x09
    ld hl, $0009
    add hl, de
    ld a, [bc]
    ld [hl], a
    inc bc
    
    ld hl, $000a
    add hl, de
    ld [hl], $00
    
    ; set entity health at offset 0x0e to 0x40
    ld hl, $000e
    add hl, de
    
    ld [hl], $40
    pop hl
    
    ld de, $000b
    add hl, de
    jp Jump_0c5_6b11


Jump_0c5_6bb4:
    push hl
    ld c, l
    ld b, h
    call Call_000_3eb8
    inc bc
    ld hl, $c600
    ld a, [bc]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr nz, jr_0c5_6bd1

    pop hl
    ld de, $000b
    add hl, de
    jp Jump_0c5_6b11


jr_0c5_6bd1:
    dec bc
    ld hl, $0000
    add hl, de
    ld [hl], $80
    ld hl, $000b
    add hl, de
    ld a, [bc]
    ld [hl], a
    inc bc
    ld hl, $000f
    add hl, de
    ld a, [bc]
    ld [hl], a
    inc hl
    inc bc
    ld a, [bc]
    ld [hl], a
    inc hl
    inc bc
    ld hl, $0011
    add hl, de
    ld a, [bc]
    ld [hl], a
    inc hl
    inc bc
    ld a, [bc]
    ld [hl], a
    inc hl
    inc bc
    ld a, [bc]
    ld [hl], a
    inc hl
    inc bc
    ld a, [bc]
    ld [hl], a
    inc hl
    inc bc
    ld hl, $000c
    add hl, de
    ld [hl], $00
    ld hl, $000d
    add hl, de
    ld [hl], $00
    ld hl, $0006
    add hl, de
    ld [hl], $00
    ld hl, $0007
    add hl, de
    ld [hl], $00
    ld hl, $0008
    add hl, de
    ld [hl], $00
    ld hl, $0009
    add hl, de
    ld a, [bc]
    ld [hl], a
    ld hl, $000a
    add hl, de
    ld [hl], $00
    ld hl, $000e
    add hl, de
    ld [hl], $40
    ld hl, $000f
    add hl, de
    ld a, [hl]
    cp $fe
    jp z, Jump_0c5_6c41

Jump_0c5_6c39:
    pop hl
    ld de, $000b
    add hl, de
    jp Jump_0c5_6b11


Jump_0c5_6c41:
    ld a, [$c4d5]
    or a
    jp z, Jump_0c5_6c39

    ld hl, $0013
    add hl, de
    push bc
    ld bc, $ffc0
    ld [hl], c
    inc hl
    ld [hl], b
    pop bc
    jp Jump_0c5_6c39


    ld a, d
    cp $80
    jr c, jr_0c5_6c6f

    call Call_0c5_6c7c
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    call Call_0c5_6c7c
    ret


jr_0c5_6c6f:
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    ret


Call_0c5_6c7c:
    ld a, $00
    sub e
    ld e, a
    ld a, $00
    sbc d
    ld d, a
    ret

bank0c5_6c85:
    ds $137b, $00