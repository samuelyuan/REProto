SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    nop

Call_000_0001:
Jump_000_0001:
    nop

Call_000_0002:
Jump_000_0002:
    nop

Call_000_0003:
    nop

Call_000_0004:
Jump_000_0004:
    nop

Jump_000_0005:
    nop
    nop

Call_000_0007:
Jump_000_0007:
    nop

RST_08::
    nop
    nop

Call_000_000a:
    nop
    nop

Call_000_000c:
    nop

Call_000_000d:
    nop
    nop

Call_000_000f:
Jump_000_000f:
    nop

RST_10::
    nop

Call_000_0011:
    nop
    nop
    nop

Jump_000_0014:
    nop

Jump_000_0015:
    nop
    nop
    nop

RST_18::
    nop
    nop
    nop
    nop

Jump_000_001c:
    nop

Jump_000_001d:
    nop
    nop
    nop

RST_20::
    nop

Call_000_0021:
    nop

Call_000_0022:
    nop

Call_000_0023:
    nop

Call_000_0024:
Jump_000_0024:
    nop

Call_000_0025:
Jump_000_0025:
    nop
    nop
    nop

RST_28::
    nop
    nop
    nop

Call_000_002b:
    nop

Call_000_002c:
    nop

Jump_000_002d:
    nop
    nop

Jump_000_002f:
    nop

RST_30::
    nop
    nop

Call_000_0032:
Jump_000_0032:
    nop

Call_000_0033:
Jump_000_0033:
    nop

Call_000_0034:
    nop

Call_000_0035:
Jump_000_0035:
    nop

Jump_000_0036:
    nop

Jump_000_0037:
    nop

RST_38::
    nop

Call_000_0039:
Jump_000_0039:
    nop
    nop

Call_000_003b:
    nop

Call_000_003c:
Jump_000_003c:
    nop

Jump_000_003d:
    nop

Call_000_003e:
Jump_000_003e:
    nop

Call_000_003f:
Jump_000_003f:
    nop

VBlankInterrupt::
    jp Jump_000_030e


    nop
    nop
    nop
    nop
    nop

LCDCInterrupt::
    jp Jump_000_02fe


    nop

Call_000_004c:
    nop
    nop
    nop
    nop

TimerOverflowInterrupt::
    ret


Jump_000_0051:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

SerialTransferCompleteInterrupt::
    ret


    nop
    nop
    nop

Call_000_005c:
    nop
    nop
    nop
    nop

JoypadTransitionInterrupt::
    ret


    nop
    nop
    nop

Call_000_0064:
    nop
    nop

Jump_000_0066:
    nop

Jump_000_0067:
    nop

    nop
    nop
    nop
    nop

Call_000_006c:
    nop
    nop

Jump_000_006e:
    nop
    nop

Call_000_0070:
    nop

Jump_000_0071:
    nop
    nop
    nop

Call_000_0074:
    nop

Jump_000_0075:
    nop

Call_000_0076:
    nop

Jump_000_0077:
    nop

Call_000_0078:
    nop

Call_000_0079:
    nop

Jump_000_007a:
    nop

Jump_000_007b:
    nop

Call_000_007c:
    nop
    nop

Jump_000_007e:
    nop

Call_000_007f:
Jump_000_007f:
    nop

Call_000_0080:
Jump_000_0080:
    nop
    nop
    nop

Jump_000_0083:
    nop
    nop
    nop
    nop

Jump_000_0087:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_008e:
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

Call_000_009e:
    nop

Jump_000_009f:
    nop

Call_000_00a0:
    nop
    nop
    nop
    nop

Call_000_00a4:
    nop
    nop
    nop
    nop

Call_000_00a8:
    nop
    nop
    nop

Jump_000_00ab:
    nop

Call_000_00ac:
    nop

Jump_000_00ad:
    nop
    nop

Call_000_00af:
    nop
    nop
    nop
    nop

Call_000_00b3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_00bc:
Jump_000_00bc:
    nop
    nop

Call_000_00be:
Jump_000_00be:
    nop

Call_000_00bf:
Jump_000_00bf:
    nop

Call_000_00c0:
Jump_000_00c0:
    nop

Call_000_00c1:
    nop

Jump_000_00c2:
    nop

Call_000_00c3:
Jump_000_00c3:
    nop

Call_000_00c4:
Jump_000_00c4:
    nop

Call_000_00c5:
    nop
    nop

Call_000_00c7:
    nop

Call_000_00c8:
    nop
    nop
    nop

Call_000_00cb:
Jump_000_00cb:
    nop

Call_000_00cc:
Jump_000_00cc:
    nop

Call_000_00cd:
    nop

Call_000_00ce:
    nop

Jump_000_00cf:
    nop

Call_000_00d0:
    nop
    nop

Call_000_00d2:
Jump_000_00d2:
    nop

Jump_000_00d3:
    nop

Call_000_00d4:
    nop

Call_000_00d5:
    nop

Jump_000_00d6:
    nop
    nop
    nop
    nop

Jump_000_00da:
    nop

Jump_000_00db:
    nop

Call_000_00dc:
Jump_000_00dc:
    nop

Call_000_00dd:
    nop

Call_000_00de:
    nop

Call_000_00df:
Jump_000_00df:
    nop

Call_000_00e0:
    nop

Jump_000_00e1:
    nop
    nop

Call_000_00e3:
    nop

Call_000_00e4:
    nop
    nop

Jump_000_00e6:
    nop

Jump_000_00e7:
    nop

Jump_000_00e8:
    nop
    nop

Call_000_00ea:
Jump_000_00ea:
    nop

Call_000_00eb:
    nop

Call_000_00ec:
    nop

Jump_000_00ed:
    nop

Jump_000_00ee:
    nop

Jump_000_00ef:
    nop

Jump_000_00f0:
    nop

Jump_000_00f1:
    nop
    nop

Call_000_00f3:
Jump_000_00f3:
    nop

Call_000_00f4:
    nop

Call_000_00f5:
    nop

Jump_000_00f6:
    nop
    nop

Call_000_00f8:
Jump_000_00f8:
    nop

Call_000_00f9:
    nop

Call_000_00fa:
    nop

Call_000_00fb:
Jump_000_00fb:
    nop

Call_000_00fc:
Jump_000_00fc:
    nop

Jump_000_00fd:
    nop

Call_000_00fe:
Jump_000_00fe:
    nop

Call_000_00ff:
Jump_000_00ff:
    nop

Boot::
    nop

Call_000_0101:
Jump_000_0101:
    jp Jump_000_0150


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "RES EVIL", $00, $00, $00

HeaderManufacturerCode::
    db $00, $00, $00, $00

HeaderCGBFlag::
    db $80

HeaderNewLicenseeCode::
    db $34, $5a

HeaderSGBFlag::
    db $00

HeaderCartridgeType::
    db $1b

HeaderROMSize::
    db $07

HeaderRAMSize::
    db $02

HeaderDestinationCode::
    db $01

HeaderOldLicenseeCode::
    db $33

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $47

HeaderGlobalChecksum::
    db $00, $00

Jump_000_0150:
    di
    ld [$c104], a

jr_000_0154:
    ld hl, $ff4d
    bit 7, [hl]
    jr nz, jr_000_0154

    set 0, [hl]

Jump_000_015d:
    xor a
    ldh [rIF], a
    ldh [rIE], a
    ld a, $30
    ldh [rP1], a
    stop
    xor a
    ldh [rVBK], a

Jump_000_016b:
    di
    ld sp, $e000
    xor a
    ldh [rNR52], a
    ldh [rSTAT], a
    ldh [rIF], a

Call_000_0176:
    ldh [rIE], a
    ldh [rVBK], a
    ldh [rSCX], a

Jump_000_017c:
    ldh [rSCY], a

Jump_000_017e:
    ld a, [$c104]

Jump_000_0181:
    push af
    ld hl, $c000
    ld bc, $1f00

jr_000_0188:
    ld [hl], $00
    inc hl
    dec bc
    ld a, b
    or c

Call_000_018e:
    jr nz, jr_000_0188

    pop af

Jump_000_0191:
    ld [$c104], a
    ld a, $01
    call Call_000_02ee
    call $446f
    call $4488
    ld a, $03
    ldh [rIE], a
    ld a, $10
    ldh [rWY], a
    ld a, $08
    ldh [rWX], a

Call_000_01ab:
    ld a, $87
    ldh [rLCDC], a

Jump_000_01af:
    ld a, $40
    ldh [rSTAT], a
    call Call_000_0246
    ei

Jump_000_01b7:
    call Call_000_3ed2
    ld a, $87
    ldh [rLCDC], a

Call_000_01be:
    call $4488

Jump_000_01c1:
    xor a

Jump_000_01c2:
    ld [$c1c0], a
    call $58c2
    call $4389
    ld a, [$a0b9]
    cp $53
    jr nz, jr_000_0208

    ld a, [$a0ba]
    cp $50
    jr nz, jr_000_0208

    ld a, [$a0bc]

Call_000_01dc:
    cp $41
    jr nz, jr_000_0208

    ld hl, $c100

Jump_000_01e3:
    ld de, $a000

Jump_000_01e6:
    ld bc, $0600

jr_000_01e9:
    ld a, [de]
    ld [hl+], a
    inc de

Call_000_01ec:
    dec bc
    ld a, b
    or c
    jr nz, jr_000_01e9

    ld hl, $a0b9

Call_000_01f4:
    xor a
    ld [$c1b9], a
    ld [$c1ba], a
    ld [$c1bc], a

Call_000_01fe:
Jump_000_01fe:
    call $4394

Call_000_0201:
Jump_000_0201:
    ld hl, $023c

Jump_000_0204:
    push hl

Jump_000_0205:
    jp $45cf


jr_000_0208:
    call $4394

jr_000_020b:
    ld a, $ff
    ld [$c180], a
    call Call_000_333b
    call $4515
    ld a, [$c10e]
    ld [$c1fc], a
    or a
    jr z, jr_000_022d

    ld a, $00
    call Call_000_2dd0
    ld a, [$c10e]
    cp $04
    jr z, jr_000_020b

    jr jr_000_0236

jr_000_022d:
    call Call_000_33eb
    ld a, [$c10e]
    ld [$c11b], a

jr_000_0236:
    call $439a
    call Call_000_039d

Jump_000_023c:
    ld a, [$c30e]

Call_000_023f:
Jump_000_023f:
    or a
    call z, $4538
    jp Jump_000_016b


Call_000_0246:
    ld a, [$c102]
    push af
    ld a, $06
    call Call_000_02ee
    call $4000
    pop af
    jp Jump_000_02ee


Call_000_0256:
    ld c, a
    ld a, [$c102]
    push af
    ld a, $06
    call Call_000_02ee
    ld a, c
    ld [$c180], a
    call $4006
    pop af
    jp Jump_000_02ee


Call_000_026b:
Jump_000_026b:
    ld c, a
    ld a, [$c102]
    push af
    ld a, $06
    call Call_000_02ee
    ld a, c
    ld [$c17f], a

Jump_000_0279:
    call $4024
    pop af
    jp Jump_000_02ee


Jump_000_0280:
    call Call_000_02ee
    ld de, $0288
    push de
    jp hl


    push af
    ld a, $01
    call Call_000_02ee
    pop af

Jump_000_028f:
    ret


Jump_000_0290:
    call Call_000_02ee
    ld bc, $0298
    push bc
    jp hl


    push af
    ld a, $01
    call Call_000_02ee
    pop af
    ret


Jump_000_02a0:
    ld c, a
    ld a, [$c102]
    push af
    ld a, c
    call Call_000_02ee
    ld de, $02ae
    push de
    jp hl


    pop af
    jp Jump_000_02ee


Call_000_02b2:
Jump_000_02b2:
jr_000_02b2:
    push bc
    call Call_000_3ed2
    pop bc
    dec b
    jr nz, jr_000_02b2

    ret


Call_000_02bb:
    ld a, $20

Jump_000_02bd:
    ldh [rP1], a

Jump_000_02bf:
    ldh a, [rP1]

Jump_000_02c1:
    ldh a, [rP1]

Jump_000_02c3:
    cpl

Jump_000_02c4:
    and $0f
    swap a
    ld b, a
    ld a, $10

Jump_000_02cb:
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]

Jump_000_02d3:
    ldh a, [rP1]

Jump_000_02d5:
    ldh a, [rP1]
    ldh a, [rP1]
    cpl

Jump_000_02da:
    and $0f

Call_000_02dc:
    or b
    ld d, a
    ld a, [$c101]

Call_000_02e1:
Jump_000_02e1:
    or d
    ld [$c101], a
    ld a, d
    ld [$c100], a

Jump_000_02e9:
    ld a, $30
    ldh [rP1], a
    ret


Call_000_02ee:
Jump_000_02ee:
    push bc
    ld b, a
    ld a, [$c102]

Call_000_02f3:
    ld c, a
    ld a, b

Call_000_02f5:
Jump_000_02f5:
    ld [$c102], a
    ld [$2000], a

Call_000_02fb:
Jump_000_02fb:
    ld a, c
    pop bc

Call_000_02fd:
Jump_000_02fd:
    ret


Jump_000_02fe:
    di

Call_000_02ff:
Jump_000_02ff:
    push af

Call_000_0300:
Jump_000_0300:
jr_000_0300:
    ldh a, [rSTAT]

Call_000_0302:
Jump_000_0302:
    and $02
    jr z, jr_000_0300

Jump_000_0306:
    ldh a, [rLCDC]
    and $fd
    ldh [rLCDC], a

Jump_000_030c:
    pop af
    reti


Jump_000_030e:
    di
    push af
    push bc

Call_000_0311:
    push de
    push hl
    ldh a, [rLCDC]
    or $02
    ldh [rLCDC], a
    ld a, [$c120]
    add $c9
    ldh [$81], a
    call $ff80

Call_000_0323:
    ldh a, [rVBK]

Jump_000_0325:
    push af
    xor a
    ldh [rVBK], a
    ld a, [$c117]
    or a
    jr z, jr_000_0347

    ld hl, $cb00
    ld a, h
    ldh [rHDMA1], a
    ld a, l
    and $f8
    ldh [rHDMA2], a
    xor a

Jump_000_033b:
    ldh [rHDMA3], a

Jump_000_033d:
    ldh [rHDMA4], a

Call_000_033f:
Jump_000_033f:
    ld a, $63

Jump_000_0341:
    ldh [rHDMA5], a
    xor a
    ld [$c117], a

Jump_000_0347:
jr_000_0347:
    pop af
    and $01
    ldh [rVBK], a
    ld a, [$c1c0]
    ldh [rSCY], a
    ld a, [$c102]
    push af
    ld a, $01
    call Call_000_02ee
    call Call_000_02bb
    xor a
    ld [$c103], a
    ld a, $06
    call Call_000_02ee
    call $4009
    pop af
    call Call_000_02ee
    ld hl, $c112
    inc [hl]
    ld hl, $c1b0
    inc [hl]
    ld a, [$c100]
    and $0f
    cp $0f

Call_000_037c:
Jump_000_037c:
    jp z, Jump_000_0391

Call_000_037f:
Jump_000_037f:
    ld a, [$c1c0]
    ld c, a

Jump_000_0383:
    ld a, $7f

Jump_000_0385:
    sub c
    ldh [rLYC], a
    ld a, $40
    ldh [rSTAT], a

Jump_000_038c:
    pop hl
    pop de
    pop bc
    pop af
    reti


Jump_000_0391:
    di
    ld a, $01
    call Call_000_02ee
    call $4515
    jp Jump_000_016b


Call_000_039d:
    ld a, $01
    ld [$c200], a
    ld a, $ff
    ld [$c11f], a
    ld a, $00
    ld [$c17c], a
    xor a
    ld [$c17d], a
    call Call_000_0890
    ld a, $c5
    call Call_000_02ee
    ld a, [$c17c]
    ld l, a

Jump_000_03bc:
    ld a, [$c17d]

Call_000_03bf:
Jump_000_03bf:
    ld h, a

Jump_000_03c0:
    add hl, hl

Jump_000_03c1:
    ld de, $4000

Jump_000_03c4:
    add hl, de
    ld a, [hl+]

Call_000_03c6:
    ld h, [hl]
    ld l, a
    ld de, $0005

Jump_000_03cb:
    add hl, de
    ld a, [hl+]

Call_000_03cd:
    ld [$c311], a
    ld a, [hl+]
    ld [$c312], a
    ld a, [hl+]
    ld [$c313], a
    ld a, [hl+]
    ld [$c314], a

Jump_000_03dc:
    ld a, [hl+]
    ld [$c309], a

Call_000_03e0:
    ld a, $01
    call Call_000_02ee
    call Call_000_08b2
    call Call_000_0906

Call_000_03eb:
    ld a, $20
    ld [$c105], a
    ld a, $05
    ld [$c1fe], a
    ld a, $01
    ld [$c1bf], a
    ld hl, $04e2

Jump_000_03fd:
    ld a, l

Call_000_03fe:
Jump_000_03fe:
    ld [$c1c4], a
    ld a, h

Call_000_0402:
    ld [$c1c5], a

Jump_000_0405:
jr_000_0405:
    call $4488

Jump_000_0408:
    call Call_000_3ed2
    xor a
    ld [$c1c0], a
    call Call_000_0741
    ld a, [$c1bf]
    or a
    jr z, jr_000_0444

Jump_000_0418:
    call $4515
    call Call_000_070b
    push af

Call_000_041f:
    xor a

Call_000_0420:
    ld [$c1bf], a

Call_000_0423:
    call $4515
    call Call_000_0906
    pop af
    cp $ff
    jp nz, Jump_000_0605

    ld a, $1f
    ld [$c105], a
    ld c, $92
    ld a, [$c11b]

Call_000_0439:
Jump_000_0439:
    or a
    jr z, jr_000_043e

Jump_000_043c:
    ld c, $93

jr_000_043e:
    ld a, c

Call_000_043f:
Jump_000_043f:
    ld [$c30b], a
    jr jr_000_0405

Call_000_0444:
jr_000_0444:
    ld a, $08
    ld [$c112], a

Jump_000_0449:
jr_000_0449:
    call Call_000_3ed2

Jump_000_044c:
    ld a, [$c112]
    cp $04
    jr c, jr_000_0449

    ld hl, $9a00

Call_000_0456:
    ld a, [$c11f]
    ld e, a
    ld a, [$c17c]
    ld d, a
    call $4408
    ld hl, $9a05
    ld a, [$c311]
    ld e, a
    ld a, [$c312]

Call_000_046b:
    ld d, a
    call $7135
    call $4408
    ld hl, $9a0a
    ld a, [$c313]
    ld e, a
    ld a, [$c314]
    ld d, a
    call $7135
    call $4408
    ld hl, $9a0f
    ld a, [$c309]
    ld e, a
    ld d, $00
    call $4408
    ld hl, $9a20
    ld a, [$c301]
    ld e, a
    ld a, [$c2e1]
    ld d, a
    call $4408
    ld hl, $9a25
    ld a, [$c319]
    ld e, a
    ld a, [$c31a]
    ld d, a
    call $4408

Call_000_04ab:
    ld hl, $0000
    add hl, sp
    push hl
    pop de
    ld hl, $9a2a
    call $4408
    xor a
    ld [$c112], a

Jump_000_04bb:
    call Call_000_1342
    call Call_000_0b72

Jump_000_04c1:
    call Call_000_08e3

Call_000_04c4:
    call $4494

Call_000_04c7:
    call Call_000_08dc
    call Call_000_1362

Call_000_04cd:
    call Call_000_11ad
    call $4457
    call Call_000_08a8
    ld a, [$c17e]
    cp $01

Call_000_04db:
    jp z, Jump_000_05ff

    call Call_000_0856
    call Call_000_08a0
    call Call_000_090d
    call Call_000_08ea

Jump_000_04ea:
    call Call_000_08f1
    call Call_000_08f8
    call Call_000_0914

Call_000_04f3:
Jump_000_04f3:
    or a
    jp nz, Jump_000_05ae

    call Call_000_08ff

Call_000_04fa:
    ld a, [$c17e]

Call_000_04fd:
Jump_000_04fd:
    cp $05

Call_000_04ff:
Jump_000_04ff:
    call z, Call_000_05bd

Jump_000_0502:
    ld a, [$c17e]

Call_000_0505:
Jump_000_0505:
    cp $01
    jp z, Jump_000_05c1

    cp $02
    jp z, Jump_000_05e1

Call_000_050f:
    cp $03
    jp z, Jump_000_0605

    cp $04
    jp z, Jump_000_059d

    ld a, [$c17c]
    ld e, a
    ld a, [$c17d]
    ld d, a
    ld hl, $c200
    add hl, de
    ld [hl], $01
    call Call_000_0898
    ld a, [$c1c4]

Jump_000_052d:
    dec a
    ld [$c1c4], a
    call $4afe
    ld a, [$c105]
    cp $5e
    jp z, Jump_000_058d

    or a

Jump_000_053d:
    jr nz, jr_000_054b

Jump_000_053f:
    ld a, [$c100]
    and $04
    jr z, jr_000_054b

    ld a, $5c
    ld [$c105], a

jr_000_054b:
    ld a, [$c100]
    and $08
    jp nz, $45a9

    ld a, [$c1bf]
    or a
    jp nz, Jump_000_073b

    ld a, [$c105]
    push af
    call $44cd
    pop bc
    ld a, [$c105]
    or a
    jr nz, jr_000_057b

    ld a, b
    cp $01
    jr nz, jr_000_057b

    ld a, [$c1fe]

Call_000_0570:
    ld c, a
    ld a, [$c180]
    cp c
    jr z, jr_000_057b

    ld a, c
    call Call_000_0256

jr_000_057b:
    jp Jump_000_0449


Call_000_057e:
Jump_000_057e:
    call Call_000_3ed2
    call $4488
    call $4515
    ld a, $01
    ld [$c105], a
    ret


Jump_000_058d:
    ld a, [$c30e]
    or a
    ret z

    call $40a5
    ld a, $01
    ld [$c105], a
    jp Jump_000_0405


Jump_000_059d:
    call $4515
    call $4488
    call $40f6
    ld a, $01
    ld [$c105], a
    jp Jump_000_0405


Jump_000_05ae:
    call Call_000_057e
    call Call_000_08e3
    call Call_000_0856
    call Call_000_0b72
    jp Jump_000_0405


Call_000_05bd:
    call $59fd
    ret


Jump_000_05c1:
    call $4515
    ld a, [$c1c3]
    cp $7c
    jr c, jr_000_05d0

Jump_000_05cb:
    call $465f
    jr jr_000_05d3

jr_000_05d0:
    call Call_000_0c80

jr_000_05d3:
    ld a, $01
    ld [$c105], a
    call Call_000_0914
    call Call_000_0906
    jp Jump_000_0405


Jump_000_05e1:
    ld a, $00
    call Call_000_0256
    call $4515
    ld a, $00

Jump_000_05eb:
    ld [$c306], a
    xor a
    ld [$c307], a
    ld a, $01
    call Call_000_2dd0
    ld a, $01
    ld [$c105], a
    jp Jump_000_0405


Call_000_05ff:
Jump_000_05ff:
    ld a, [$c1b8]

Jump_000_0602:
    ld [$c1f4], a

Jump_000_0605:
    call Call_000_366f
    ld a, $01
    ld [$c105], a
    jp Jump_000_0405


Call_000_0610:
    ld a, [$c102]
    push af
    ld a, $01
    call Call_000_02ee
    ld a, c

Call_000_061a:
    ld c, e
    ld b, d
    call Call_000_3dda
    pop af

Call_000_0620:
    jp Jump_000_02ee


Call_000_0623:
    ld a, [$c102]
    push af
    ld a, $fa
    call Call_000_02ee
    ld a, [de]
    ld c, a
    inc de

Call_000_062f:
    ld a, [de]

Call_000_0630:
    ld b, a
    inc de
    ld a, [de]
    ld e, a

Jump_000_0634:
    ld a, $01
    call Call_000_02ee
    ld a, e
    call Call_000_3d9a

Jump_000_063d:
    pop af

Jump_000_063e:
    jp Jump_000_02ee


Call_000_0641:
Jump_000_0641:
    ld a, [$c102]

Call_000_0644:
Jump_000_0644:
    push af
    push hl
    ld a, $01
    call Call_000_02ee
    call $4515
    call $4488
    call Call_000_0741
    ld a, $01
    ld [$c105], a
    call Call_000_3ed2
    call $44cd
    pop hl
    pop af
    jp Jump_000_02ee


Call_000_0664:
    ld a, [$c102]
    push af
    ld a, $01
    call Call_000_02ee
    call $4515
    call $4488
    call Call_000_0741
    pop af
    jp Jump_000_02ee


Call_000_067a:
    ld a, [$c102]
    push af
    ld a, $01
    call Call_000_02ee
    ld a, c
    ld [$c105], a
    ld b, $20

jr_000_0689:
    push bc
    call Call_000_3ed2
    ld a, [$c1c6]
    or a
    jr z, jr_000_06aa

    add a
    add a
    ld c, a
    ld b, $00
    ld hl, $2fd0
    add hl, bc
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0008
    add hl, de
    call $44a7
    jr jr_000_06ad

jr_000_06aa:
    call $44cd

jr_000_06ad:
    pop bc
    dec b
    jr nz, jr_000_0689

    pop af
    jp Jump_000_02ee


Call_000_06b5:
    ld a, [$c102]
    push af
    ld a, $01
    call Call_000_02ee
    call $4515
    ld a, [$c1c3]
    cp $7c
    jr nc, jr_000_06cf

    call Call_000_0c80

Jump_000_06cb:
    pop af
    jp Jump_000_02ee


jr_000_06cf:
    call $465f
    pop af

Jump_000_06d3:
    jp Jump_000_02ee


Call_000_06d6:
Jump_000_06d6:
    ld a, [$c102]
    push af
    ld a, $01
    call Call_000_02ee

Call_000_06df:
    call Call_000_1342
    call Call_000_0b72
    call Call_000_08e3
    call $4494
    call Call_000_08dc
    call Call_000_1362
    call Call_000_11ad
    call $4457
    pop af

Jump_000_06f8:
    jp Jump_000_02ee


Call_000_06fb:
    ld a, [$c102]
    push af

Call_000_06ff:
Jump_000_06ff:
    ld a, $01

Call_000_0701:
Jump_000_0701:
    call Call_000_02ee

Call_000_0704:
Jump_000_0704:
    call Call_000_0942

Call_000_0707:
Jump_000_0707:
    pop af
    jp Jump_000_02ee


Call_000_070b:
    ld a, $0e
    ld hl, $409a
    jp Jump_000_0280


Call_000_0713:
    ld c, a

Jump_000_0714:
    ld a, [$c102]
    push af

Call_000_0718:
    ld a, $01
    call Call_000_02ee
    push bc
    call $4515
    pop bc
    sla c
    sla c
    ld b, $00
    ld hl, $2fd0
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    call Call_000_2fdc
    pop af
    jp Jump_000_02ee


Jump_000_073b:
    call $4515

Jump_000_073e:
    jp Jump_000_0405


Call_000_0741:
    ld a, $07
    call Call_000_02ee
    ld a, [$c17c]
    ld l, a
    ld a, [$c17d]
    ld h, a
    add hl, hl
    ld de, $4000
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    ld a, [$c11f]
    ld l, a
    ld h, $00
    add hl, hl
    push hl

Jump_000_075f:
    add hl, hl
    add hl, hl
    add hl, hl
    pop bc
    add hl, bc
    add hl, de
    ld a, [hl+]
    ld [$c132], a
    ld a, [hl+]
    ld [$c133], a
    ld a, [hl+]
    ld [$c134], a
    ld a, [hl+]
    ld [$c135], a
    ld a, [hl+]
    ld [$c136], a
    ld a, [hl+]
    ld [$c137], a
    ld a, [hl+]

Jump_000_077e:
    ld [$c12e], a

Call_000_0781:
    ld a, [hl+]
    ld [$c12f], a
    ld a, [hl+]
    ld [$c130], a
    ld a, [hl+]
    ld [$c131], a
    ld a, [hl+]
    ld [$c138], a
    ld a, [hl+]
    ld [$c139], a
    ld a, [hl+]
    ld [$c13a], a
    ld a, [hl+]
    ld [$c13b], a
    ld a, [hl+]
    ld [$c13c], a
    ld a, [hl+]
    ld [$c13d], a
    ld a, [hl+]
    ld [$c16e], a
    ld a, [hl]
    and $3f
    ld [$c16f], a
    ld a, [hl]
    and $40
    ld [$c1e3], a
    ld a, $01
    call Call_000_02ee
    call Call_000_1138
    call Call_000_091b
    ld a, [$c17c]

Jump_000_07c3:
    ld l, a
    ld a, [$c17d]
    ld h, a
    add hl, hl
    add hl, hl
    ld de, $71b5

Call_000_07cd:
    add hl, de

Call_000_07ce:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $4d5e

Jump_000_07d4:
    ld a, $01
    ldh [rVBK], a
    ld a, $0f

Jump_000_07da:
    call Call_000_02ee

Call_000_07dd:
    ld de, $4cb0
    ld hl, $8800
    ld bc, $0800
    call Call_000_323c
    ld a, $01
    call Call_000_02ee

Jump_000_07ee:
    xor a
    ldh [rVBK], a
    ld a, $0c

Call_000_07f3:
    call Call_000_02ee
    ld de, $4f04

Call_000_07f9:
Jump_000_07f9:
    ld hl, $8740

Jump_000_07fc:
    ld bc, $00c0

Call_000_07ff:
Jump_000_07ff:
    call Call_000_323c

Call_000_0802:
    ld a, $01
    call Call_000_02ee
    ld hl, $9a00
    ld b, $80

jr_000_080c:
    xor a
    ldh [rVBK], a
    call Call_000_328a
    ld [hl], $80
    ld a, $01
    ldh [rVBK], a

Call_000_0818:
    ld [hl], $09
    inc hl
    dec b
    jr nz, jr_000_080c

    xor a
    ldh [rVBK], a
    ld hl, $5297

Jump_000_0824:
    ld a, $fd
    jp Jump_000_0280


Call_000_0829:
    ld a, [$c102]
    push af
    ld a, $04
    call Call_000_02ee
    call $4bc4
    pop af
    jp Jump_000_02ee


Call_000_0839:
    ld a, [$c102]

Jump_000_083c:
    push af

Jump_000_083d:
    ld a, $04

Call_000_083f:
Jump_000_083f:
    call Call_000_02ee
    call $4b80
    pop af
    jp Jump_000_02ee


Jump_000_0849:
    ld a, $03
    call Call_000_02ee
    call $7a80
    ld a, $01
    jp Jump_000_02ee


Call_000_0856:
    ld hl, $42aa
    ld a, $fc
    jp Jump_000_0922


Call_000_085e:
    ld hl, $4ad4
    ld a, $04
    jp Jump_000_0922


Call_000_0866:
    ld hl, $4a8e
    ld a, $04
    jp Jump_000_0922


Call_000_086e:
    ld hl, $4a00
    ld a, $04
    jp Jump_000_0922


Call_000_0876:
    ld a, $04
    call Call_000_02ee
    call $4a33
    ld a, $01
    jp Jump_000_02ee


Call_000_0883:
    ld a, $08
    call Call_000_02ee
    call $4000
    ld a, $01
    jp Jump_000_02ee


Call_000_0890:
    ld hl, $4c5c
    ld a, $04
    jp Jump_000_0922


Call_000_0898:
    ld hl, $4c34
    ld a, $04
    jp Jump_000_0922


Call_000_08a0:
    ld hl, $41e4
    ld a, $fc
    jp Jump_000_0922


Call_000_08a8:
    call Call_000_091b
    ld hl, $44db
    ld a, $fc
    jr jr_000_0922

Call_000_08b2:
    ld a, $c5
    ld hl, $6273

Jump_000_08b7:
    jr jr_000_0922

Call_000_08b9:
    ld a, $05

Call_000_08bb:
    ld hl, $5c1c
    jr jr_000_0922

Call_000_08c0:
    ld a, $05
    ld hl, $5e40
    jr jr_000_0922

Call_000_08c7:
    ld a, $05
    ld hl, $5e90
    jr jr_000_0922

Call_000_08ce:
    ld a, $05
    ld hl, $5ce6

Jump_000_08d3:
    jr jr_000_0922

Call_000_08d5:
    ld a, $05
    ld hl, $60f4

Jump_000_08da:
    jr jr_000_0922

Call_000_08dc:
    ld hl, $4caa
    ld a, $fc
    jr jr_000_0922

Call_000_08e3:
    ld hl, $4000
    ld a, $fb
    jr jr_000_0922

Call_000_08ea:
    ld hl, $4c94
    ld a, $fb
    jr jr_000_0922

Call_000_08f1:
    ld hl, $511c
    ld a, $fd

Call_000_08f6:
    jr jr_000_0922

Call_000_08f8:
Jump_000_08f8:
    ld hl, $64fb

Call_000_08fb:
    ld a, $c4
    jr jr_000_0922

Call_000_08ff:
Jump_000_08ff:
    ld a, $c5

Jump_000_0901:
    ld hl, $62c5
    jr jr_000_0922

Call_000_0906:
    ld a, $c5

Call_000_0908:
    ld hl, $6adc
    jr jr_000_0922

Call_000_090d:
    ld hl, $43a0

Jump_000_0910:
    ld a, $fd
    jr jr_000_0922

Call_000_0914:
    ld hl, $4000
    ld a, $c6
    jr jr_000_0922

Call_000_091b:
    ld hl, $5bb0
    ld a, $0f
    jr jr_000_0922

Jump_000_0922:
jr_000_0922:
    jp Jump_000_0280


Call_000_0925:
Jump_000_0925:
    ld hl, $5f7f
    ld a, $0f
    jr jr_000_0922

Call_000_092c:
    ld hl, $5dcb

Call_000_092f:
    ld a, $0f
    jr jr_000_0922

Call_000_0933:
    ld hl, $6280
    ld a, $c4
    jr jr_000_093f

Call_000_093a:
    ld hl, $6421
    ld a, $c4

Call_000_093f:
Jump_000_093f:
jr_000_093f:
    jp Jump_000_0290


Call_000_0942:
Jump_000_0942:
    ld hl, $4ce7
    ld a, $04
    jp Jump_000_0922


Call_000_094a:
    ld a, [$c1e3]
    or a
    jp z, Jump_000_0a33

    push de
    ld hl, $0011
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    call $7135
    ld a, e
    ld [$c13e], a
    ld a, d
    ld [$c13f], a
    pop de
    push de
    ld hl, $0013
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    call $7135
    ld a, e
    ld [$c142], a
    ld a, d
    ld [$c143], a
    ld hl, $0000
    ld a, l
    ld [$c140], a

Call_000_097f:
Jump_000_097f:
    ld a, h
    ld [$c141], a
    call Call_000_0ec5
    pop de
    ld hl, $0002
    add hl, de
    ld a, [$c13e]
    ld [hl], a
    ld hl, $0003
    add hl, de
    ld a, [$c140]
    ld [hl], a

Jump_000_0997:
    ld hl, $0001
    add hl, de
    ld a, [$c142]
    ld [hl], a
    ld a, [$c143]
    or a
    ret nz

    ld a, [$c142]
    or a
    ret z

    push de
    ld de, $0016
    call Call_000_1108
    pop de
    push de
    ld hl, $0011
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    call $7135
    ld a, [$c144]
    ld l, a

Jump_000_09c0:
    ld a, [$c145]

Jump_000_09c3:
    ld h, a
    add hl, de
    ld a, l
    ld [$c13e], a
    ld a, h
    ld [$c13f], a
    pop de

Call_000_09ce:
    push de
    ld hl, $0013
    add hl, de

Jump_000_09d3:
    ld e, [hl]
    inc hl
    ld d, [hl]
    call $7135
    ld a, [$c148]
    ld l, a
    ld a, [$c149]
    ld h, a
    add hl, de
    ld a, l
    ld [$c142], a
    ld a, h
    ld [$c143], a
    ld hl, $0000
    ld a, l
    ld [$c140], a
    ld a, h
    ld [$c141], a
    call Call_000_0ec5
    pop de
    ld a, [$c13e]
    ld c, a
    ld hl, $0002

Jump_000_0a00:
    add hl, de
    ld a, [hl]
    sub c

Jump_000_0a03:
    ld hl, $0004
    add hl, de
    ld [hl], a
    cp $20

Jump_000_0a0a:
    jr c, jr_000_0a0f

    ld a, $1f
    ld [hl], a

jr_000_0a0f:
    ld hl, $0004
    add hl, de
    ld a, [hl]
    ld c, a
    srl a
    add c
    ld hl, $0005
    add hl, de
    ld [hl], a

Jump_000_0a1d:
    srl a
    ld c, a
    ld hl, $0003
    add hl, de

Call_000_0a24:
Jump_000_0a24:
    ld a, [hl]
    sub c
    ld [hl], a
    ld hl, $0002
    add hl, de

Call_000_0a2b:
    ld a, [hl]
    sub $10
    ld [hl], a
    ld a, $c0

Jump_000_0a31:
    ld [de], a
    ret


Call_000_0a33:
Jump_000_0a33:
    push de
    ld hl, $0011
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]

Call_000_0a3b:
    call $7135
    ld a, e

Call_000_0a3f:
    ld [$c13e], a
    ld a, d

Jump_000_0a43:
    ld [$c13f], a
    pop de
    push de
    ld hl, $0013
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    call $7135
    ld a, e
    ld [$c142], a
    ld a, d
    ld [$c143], a
    pop de
    push de
    ld hl, $0019
    add hl, de
    ld a, [hl+]
    ld [$c140], a
    ld a, [hl+]
    ld [$c141], a
    call Call_000_0ec5
    pop de
    ld a, [$c13f]
    or a
    jr z, jr_000_0a7d

    cp $ff
    ret nz

    ld a, [$c13e]
    cp $e0
    ret c

    jr jr_000_0a83

jr_000_0a7d:
    ld a, [$c13e]
    cp $a8
    ret nc

jr_000_0a83:
    ld hl, $0002
    add hl, de
    ld a, [$c13e]
    ld [hl], a
    ld a, [$c141]
    or a
    ret nz

    ld hl, $0003
    add hl, de
    ld a, [$c140]
    ld [hl], a
    ld hl, $0001
    add hl, de
    ld a, [$c142]
    ld [hl], a
    ld a, [$c143]
    or a
    ret nz

    ld a, [$c142]
    or a
    ret z

    ld a, [$c1c2]
    cp $e6
    jr z, jr_000_0ac3

    cp $e7
    jr z, jr_000_0acd

    cp $e8
    jr z, jr_000_0acd

    cp $ea
    jr z, jr_000_0ac3

    cp $ed
    jr z, jr_000_0acd

    jr jr_000_0ad7

Jump_000_0ac3:
jr_000_0ac3:
    push de

Jump_000_0ac4:
    ld de, $0098
    call Call_000_1108
    pop de
    jr jr_000_0adf

jr_000_0acd:
    push de
    ld de, $0060
    call Call_000_1108
    pop de
    jr jr_000_0adf

jr_000_0ad7:
    push de
    ld de, $0080
    call Call_000_1108
    pop de

jr_000_0adf:
    push de
    ld hl, $0011
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]

Jump_000_0ae7:
    call $7135
    ld a, [$c144]
    ld l, a
    ld a, [$c145]
    ld h, a
    add hl, de
    ld a, l
    ld [$c13e], a
    ld a, h
    ld [$c13f], a
    pop de
    push de

Jump_000_0afd:
    ld hl, $0013

Call_000_0b00:
Jump_000_0b00:
    add hl, de

Jump_000_0b01:
    ld e, [hl]
    inc hl

Call_000_0b03:
Jump_000_0b03:
    ld d, [hl]
    call $7135
    ld a, [$c148]
    ld l, a

Jump_000_0b0b:
    ld a, [$c149]
    ld h, a
    add hl, de
    ld a, l
    ld [$c142], a
    ld a, h
    ld [$c143], a
    ld hl, $0000
    ld a, l

Call_000_0b1c:
    ld [$c140], a
    ld a, h
    ld [$c141], a

Call_000_0b23:
    call Call_000_0ec5
    pop de
    ld a, [$c13e]
    ld c, a
    ld a, [$c13f]
    ld b, a
    ld hl, $0002
    add hl, de
    ld a, [hl]
    sub c
    ld c, a
    ld a, $00
    sbc b

Call_000_0b39:
    ld b, a
    srl b

Jump_000_0b3c:
    rr c

Call_000_0b3e:
    srl b
    rr c
    ld a, c
    srl a
    ld hl, $0004
    add hl, de
    ld [hl], a
    cp $20
    jr c, jr_000_0b51

    ld a, $1f
    ld [hl], a

jr_000_0b51:
    ld a, c
    cp $60
    jr c, jr_000_0b58

    ld a, $5f

jr_000_0b58:
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld c, a
    ld hl, $0003
    add hl, de
    ld a, [hl]
    inc a
    sub c
    ld [hl], a
    ld hl, $0002
    add hl, de
    ld a, [hl]
    sub $10
    ld [hl], a
    ld a, $c0
    ld [de], a
    ret


Call_000_0b72:
    ld de, $c300
    ld b, $08

jr_000_0b77:
    push bc
    push de
    ld a, [de]
    and $80
    ld [de], a
    jr z, jr_000_0b91

    ld hl, $000b
    add hl, de
    ld a, [hl]
    cp $98
    jr c, jr_000_0b9f

    cp $a8
    jr c, jr_000_0bbd

    cp $e0
    jp nc, Jump_000_0be4

jr_000_0b91:
    pop de
    pop bc
    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_000_0b77

    ret


jr_000_0b9f:
    ld [$c1c2], a
    push de
    call Call_000_094a
    pop de
    ld a, [de]
    and $40
    jr z, jr_000_0b91

    push de
    call Call_000_0839
    pop de
    ld hl, $000c
    add hl, de
    ld a, [hl]
    and $80
    call nz, Call_000_0bfe
    jr jr_000_0b91

jr_000_0bbd:
    ld [$c1c2], a
    call Call_000_0933

Jump_000_0bc3:
    or a
    jr z, jr_000_0b91

    call $495f
    push de
    call Call_000_094a

Call_000_0bcd:
    pop de

Call_000_0bce:
    ld a, [de]
    and $40
    jr z, jr_000_0b91

Jump_000_0bd3:
    push de
    call Call_000_0839
    pop de
    ld hl, $000d

Jump_000_0bdb:
    add hl, de
    ld a, [hl]
    and $80
    call nz, Call_000_0c04
    jr jr_000_0b91

Jump_000_0be4:
    ld [$c1c2], a
    call Call_000_093a
    or a
    jr z, jr_000_0b91

    push de
    call Call_000_094a
    pop de
    ld a, [de]
    and $40
    jr z, jr_000_0b91

    push de
    call Call_000_0839
    pop de

Call_000_0bfc:
    jr jr_000_0b91

Call_000_0bfe:
    push de

Call_000_0bff:
Jump_000_0bff:
    call Call_000_11b3

Call_000_0c02:
    pop de

Call_000_0c03:
Jump_000_0c03:
    ret


Call_000_0c04:
    push de
    call Call_000_0829
    pop de
    ret


Call_000_0c0a:
    ld a, $fa

Call_000_0c0c:
    call Call_000_02ee

Call_000_0c0f:
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld e, [hl]
    ld a, $01
    call Call_000_02ee
    ld a, e
    ld hl, $1000
    jp Jump_000_3dda


Call_000_0c20:
Jump_000_0c20:
    push hl
    ld bc, $6431
    ld hl, $1000
    ld a, $fa
    call Call_000_3dda
    pop hl
    ret


Call_000_0c2e:
Jump_000_0c2e:
    push hl

Call_000_0c2f:
jr_000_0c2f:
    ld hl, $c100

Call_000_0c32:
    call Call_000_3ed2
    ld a, [hl]
    and $03
    jr nz, jr_000_0c2f

jr_000_0c3a:
    call Call_000_3ed2

Jump_000_0c3d:
    ld a, [hl]
    and $03
    jr z, jr_000_0c3a

jr_000_0c42:
    call Call_000_3ed2
    ld a, [hl]
    and $03
    jr nz, jr_000_0c42

    pop hl
    ret


Call_000_0c4c:
    ld c, $ff
    jr jr_000_0c52

Call_000_0c50:
Jump_000_0c50:
    ld c, $01

jr_000_0c52:
    ld b, $10

jr_000_0c54:
    push bc
    call Call_000_3ed2
    call Call_000_3ed2
    ld a, [$c1c0]
    sub c
    ld [$c1c0], a
    call Call_000_0c6a
    pop bc
    dec b
    jr nz, jr_000_0c54

    ret


Call_000_0c6a:
    ld hl, $c900
    call Call_000_0c73
    ld hl, $ca00

Call_000_0c73:
    ld de, $0004
    ld b, $28

jr_000_0c78:
    ld a, [hl]
    add c
    ld [hl], a

Call_000_0c7b:
    add hl, de

Jump_000_0c7c:
    dec b
    jr nz, jr_000_0c78

    ret


Call_000_0c80:
    call $4488
    ld a, $00

Call_000_0c85:
    ld [$c306], a
    xor a
    ld [$c307], a
    ld hl, $9800
    ld bc, $0400

jr_000_0c92:
    call Call_000_328a
    xor a
    ldh [rVBK], a
    ld [hl], $80
    ld a, $01
    ldh [rVBK], a
    ld [hl], $08
    inc hl
    xor a
    ldh [rVBK], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_0c92

    ld a, $20
    ld [$c105], a
    xor a
    ld [$c162], a
    ld a, [$c1b6]
    cp $08

Call_000_0cb7:
    jp c, Jump_000_0def

Jump_000_0cba:
    call Call_000_3ed2
    call $4494

Call_000_0cc0:
    xor a
    ld [$c160], a
    ld hl, $5000
    ld a, [$c1b6]
    and $07
    ld e, a
    add a
    add e
    add h
    ld h, a
    ld de, $3004
    ld bc, $3e40
    ld a, [$c162]
    cp $08

Call_000_0cdc:
    jr c, jr_000_0d05

    ld a, l
    add $80
    ld l, a
    ld a, h

Call_000_0ce3:
    adc $01
    ld h, a
    ld e, $08
    ld a, [$c162]
    cp $10
    jr c, jr_000_0d05

    sub $10

Call_000_0cf1:
    ld c, a

Call_000_0cf2:
    ld a, c

Call_000_0cf3:
Jump_000_0cf3:
    srl a
    add d

Jump_000_0cf6:
    ld d, a

Call_000_0cf7:
    ld a, b
    ld b, a
    ld a, c
    srl a

Call_000_0cfc:
    srl a

Jump_000_0cfe:
    srl a

Call_000_0d00:
Jump_000_0d00:
    ld c, a

Jump_000_0d01:
    ld a, $40

Call_000_0d03:
Jump_000_0d03:
    sub c
    ld c, a

jr_000_0d05:
    ld a, l
    ld [$c15c], a
    ld a, h
    ld [$c15d], a

Call_000_0d0d:
Jump_000_0d0d:
    ld a, d
    ld [$c118], a
    ld a, e
    ld [$c128], a

Jump_000_0d15:
    ld a, b
    sub e
    ld [$c15e], a
    ld a, c
    ld [$c15f], a
    ld a, [$c1b7]
    ld [$c161], a
    call Call_000_2d62
    ld hl, $5000
    ld a, [$c1b6]
    and $07
    ld e, a
    add a
    add e
    add h

Call_000_0d33:
    ld h, a
    ld de, $3004
    ld bc, $5440
    ld a, [$c162]
    cp $10

Jump_000_0d3f:
    jr c, jr_000_0d68

    sub $10
    ld c, a
    ld a, c
    srl a
    add d
    ld d, a
    ld a, c
    srl a
    srl a
    ld e, a
    ld a, $04
    sub e

Call_000_0d52:
    ld e, a
    cp $05
    jr c, jr_000_0d59

    ld e, $00

jr_000_0d59:
    ld a, b
    add c
    ld b, a
    ld a, c
    srl a
    srl a
    srl a
    ld c, a
    ld a, $40
    sub c
    ld c, a

jr_000_0d68:
    ld a, l
    ld [$c15c], a

Call_000_0d6c:
    ld a, h
    ld [$c15d], a
    ld a, d
    ld [$c118], a
    ld a, e
    ld [$c128], a
    ld a, b
    ld [$c15e], a
    ld a, c
    ld [$c15f], a
    ld a, [$c1b7]
    ld [$c161], a

Call_000_0d86:
    call Call_000_2d62
    call Call_000_11ad
    call $4457
    ld a, [$c105]
    or a
    jr z, jr_000_0d99

    cp $20
    jr c, jr_000_0db7

jr_000_0d99:
    ld a, [$c162]
    cp $1f
    jr c, jr_000_0dac

    ld a, [$c105]
    cp $40
    jr nc, jr_000_0dac

    ld a, $40
    ld [$c105], a

jr_000_0dac:
    ld a, [$c162]
    cp $2f
    jr nc, jr_000_0db7

Call_000_0db3:
    inc a
    ld [$c162], a

jr_000_0db7:
    ld c, $04
    ld a, [$c17f]
    cp c
    jr z, jr_000_0dca

Call_000_0dbf:
    ld a, [$c162]
    cp $04
    jr nz, jr_000_0dca

    ld a, c
    call Call_000_026b

jr_000_0dca:
    ld a, [$c105]
    cp $5e
    jp z, Jump_000_0dea

    or a
    jr nz, jr_000_0de1

    ld a, [$c100]
    and $04
    jr z, jr_000_0de1

Call_000_0ddc:
    ld a, $40
    ld [$c105], a

jr_000_0de1:
    ld hl, $2eee
    call $44a7
    jp Jump_000_0cba


Jump_000_0dea:
    ld a, $05
    jp Jump_000_026b


Jump_000_0def:
    call Call_000_3ed2

Call_000_0df2:
Jump_000_0df2:
    call Call_000_3ed2
    call $4494
    xor a
    ld [$c160], a
    ld hl, $5000

Call_000_0dff:
    ld a, [$c1b6]

Call_000_0e02:
    and $07
    ld e, a
    add a
    add e
    add h
    ld h, a
    ld de, $3004
    ld bc, $4e40

Call_000_0e0f:
    ld a, [$c162]
    cp $08
    jr c, jr_000_0e3d

    ld a, l
    add $80
    ld l, a
    ld a, h
    adc $01
    ld h, a
    ld e, $08
    ld a, [$c162]

Call_000_0e23:
    cp $10

Jump_000_0e25:
    jr c, jr_000_0e3d

    sub $10
    ld c, a
    ld a, c
    srl a

Jump_000_0e2d:
    add d
    ld d, a
    ld a, b
    ld b, a
    ld a, c

Call_000_0e32:
    srl a
    srl a
    srl a
    ld c, a
    ld a, $40
    sub c

Jump_000_0e3c:
    ld c, a

Jump_000_0e3d:
jr_000_0e3d:
    ld a, l
    ld [$c15c], a
    ld a, h
    ld [$c15d], a
    ld a, d
    ld [$c118], a
    ld a, e
    ld [$c128], a
    ld a, b
    sub e
    ld [$c15e], a
    ld a, c
    ld [$c15f], a
    ld a, [$c1b7]
    ld [$c161], a
    call Call_000_2d62
    call Call_000_11ad
    call $4457
    ld a, [$c105]
    or a
    jr z, jr_000_0e6f

    cp $20
    jr c, jr_000_0e8d

jr_000_0e6f:
    ld a, [$c162]
    cp $1f
    jr c, jr_000_0e82

    ld a, [$c105]

Jump_000_0e79:
    cp $40
    jr nc, jr_000_0e82

Jump_000_0e7d:
    ld a, $40
    ld [$c105], a

jr_000_0e82:
    ld a, [$c162]
    cp $2f
    jr nc, jr_000_0e8d

    inc a
    ld [$c162], a

jr_000_0e8d:
    ld c, $04
    ld a, [$c17f]
    cp c
    jr z, jr_000_0ea0

    ld a, [$c162]
    cp $04
    jr nz, jr_000_0ea0

    ld a, c
    call Call_000_026b

jr_000_0ea0:
    ld a, [$c105]
    cp $5e
    jp z, Jump_000_0ec0

    or a
    jr nz, jr_000_0eb7

    ld a, [$c100]
    and $04
    jr z, jr_000_0eb7

    ld a, $40
    ld [$c105], a

jr_000_0eb7:
    ld hl, $2eee
    call $44a7
    jp Jump_000_0def


Jump_000_0ec0:
    ld a, $05
    jp Jump_000_026b


Call_000_0ec5:
    ld a, [$c132]
    ld e, a
    ld a, [$c133]
    ld d, a
    ld a, [$c13e]
    ld l, a
    ld a, [$c13f]
    ld h, a
    add hl, de
    ld a, l
    ld [$c13e], a
    ld [$c1d5], a
    ld a, h
    ld [$c13f], a
    ld [$c1d6], a
    ld a, [$c134]
    ld e, a
    ld a, [$c135]
    ld d, a
    ld a, [$c140]
    ld l, a
    ld a, [$c141]

Call_000_0ef3:
    ld h, a
    add hl, de
    ld e, l
    ld d, h
    call $7074
    ld a, e

Call_000_0efb:
    ld [$c140], a
    ld [$c1d7], a
    ld a, d
    ld [$c141], a
    ld [$c1d8], a

Call_000_0f08:
    ld a, [$c136]

Call_000_0f0b:
    ld e, a
    ld a, [$c137]

Jump_000_0f0f:
    ld d, a

Call_000_0f10:
    ld a, [$c142]
    ld l, a
    ld a, [$c143]
    ld h, a

Jump_000_0f18:
    add hl, de
    ld a, l
    ld [$c142], a
    ld [$c1d9], a

Jump_000_0f20:
    ld a, h
    ld [$c143], a

Jump_000_0f24:
    ld [$c1da], a
    ld a, [$c13e]
    ld e, a
    ld a, [$c13f]
    ld d, a
    ld a, [$c12b]
    ld l, a
    ld h, $00
    call $6f11
    ld a, e
    ld [$c154], a

Jump_000_0f3c:
    ld a, d
    ld [$c155], a
    ld a, [$c142]

Call_000_0f43:
Jump_000_0f43:
    ld e, a
    ld a, [$c143]
    ld d, a
    ld a, [$c12a]
    ld l, a
    ld h, $00
    call $6f11
    call Call_000_10e9
    call $7108
    ld a, e
    ld [$c144], a
    ld a, d
    ld [$c145], a
    ld a, [$c140]
    ld [$c146], a
    ld a, [$c141]
    ld [$c147], a
    ld a, [$c13e]
    ld e, a
    ld a, [$c13f]
    ld d, a
    ld a, [$c12a]
    ld l, a
    ld h, $00
    call $6f11

Call_000_0f7c:
Jump_000_0f7c:
    ld a, e
    ld [$c154], a
    ld a, d

Call_000_0f81:
    ld [$c155], a
    ld a, [$c142]

Jump_000_0f87:
    ld e, a
    ld a, [$c143]
    ld d, a
    ld a, [$c12b]
    ld l, a
    ld h, $00
    call $6f11
    call Call_000_10fa
    call $70cb
    ld a, e
    ld [$c148], a
    ld a, d
    ld [$c149], a
    ld a, [$c144]
    ld [$c13e], a
    ld a, [$c145]
    ld [$c13f], a

Jump_000_0faf:
    ld a, [$c146]
    ld e, a

Jump_000_0fb3:
    ld a, [$c147]
    ld d, a
    ld a, [$c12d]
    ld l, a
    ld h, $00
    call $6f11

Call_000_0fc0:
Jump_000_0fc0:
    ld a, e
    ld [$c154], a
    ld a, d
    ld [$c155], a
    ld a, [$c148]

Jump_000_0fcb:
    ld e, a
    ld a, [$c149]

Jump_000_0fcf:
    ld d, a
    ld a, [$c12c]

Jump_000_0fd3:
    ld l, a
    ld h, $00
    call $6f11
    call Call_000_10e9
    call $70cb
    ld a, e
    ld [$c142], a

Jump_000_0fe3:
    ld a, d

Call_000_0fe4:
    ld [$c143], a
    ld a, [$c146]
    ld e, a
    ld a, [$c147]
    ld d, a
    ld a, [$c12c]
    ld l, a

Jump_000_0ff3:
    ld h, $00
    call $6f11
    ld a, e
    ld [$c154], a

Call_000_0ffc:
Jump_000_0ffc:
    ld a, d

Jump_000_0ffd:
    ld [$c155], a

Call_000_1000:
    ld a, [$c148]

Call_000_1003:
    ld e, a
    ld a, [$c149]
    ld d, a
    ld a, [$c12d]
    ld l, a
    ld h, $00

Jump_000_100e:
    call $6f11
    call Call_000_10fa
    call $7108
    ld a, e
    ld [$c140], a

Call_000_101b:
    ld a, d
    ld [$c141], a
    ld a, [$c138]
    ld l, a

Call_000_1023:
    ld a, [$c139]
    ld h, a

Call_000_1027:
    ld a, [$c13e]
    ld e, a
    ld a, [$c13f]
    ld d, a
    add hl, de
    ld a, l
    ld [$c13e], a
    ld a, h
    ld [$c13f], a

Call_000_1038:
    ld a, [$c13a]

Call_000_103b:
    ld l, a

Jump_000_103c:
    ld a, [$c13b]

Jump_000_103f:
    ld h, a
    ld a, [$c140]
    ld e, a

Jump_000_1044:
    ld a, [$c141]
    ld d, a
    add hl, de
    ld a, l
    ld [$c140], a
    ld a, h
    ld [$c141], a
    ld a, [$c13c]
    ld l, a
    ld a, [$c13d]
    ld h, a
    ld a, [$c142]
    ld e, a
    ld a, [$c143]
    ld d, a
    add hl, de
    ld a, l
    ld [$c142], a
    ld a, h
    ld [$c143], a
    ld hl, $c13e
    call $704b
    ld hl, $c140
    call $704b
    ld a, [$c142]
    ld e, a
    ld a, [$c143]
    ld d, a
    ld a, [$c1df]
    ld l, a
    ld a, [$c1e0]
    ld h, a
    call $6f11
    call $7086
    ld a, e
    ld [$c142], a

Call_000_1090:
    ld a, d
    ld [$c143], a
    ld a, [$c13e]
    ld e, a
    ld a, [$c13f]
    ld d, a
    ld a, [$c1db]
    ld l, a
    ld a, [$c1dc]
    ld h, a
    call $6f11
    ld a, [$c142]
    ld c, a
    ld a, [$c143]
    ld b, a
    call $6fbc
    ld a, e
    add $58
    ld [$c13e], a
    ld a, d
    adc $00
    ld [$c13f], a
    ld a, [$c140]
    ld e, a
    ld a, [$c141]
    ld d, a
    ld a, [$c1dd]
    ld l, a
    ld a, [$c1de]
    ld h, a
    call $6f11
    ld a, [$c142]

Call_000_10d4:
    ld c, a
    ld a, [$c143]
    ld b, a
    call $6fbc
    ld a, e
    add $50
    ld [$c140], a
    ld a, d
    adc $00
    ld [$c141], a
    ret


Call_000_10e9:
    push hl
    ld a, [$c154]

Call_000_10ed:
    ld l, a
    ld a, [$c155]
    ld h, a
    call $7074
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ret


Call_000_10fa:
    push hl
    ld a, [$c154]

Jump_000_10fe:
    ld l, a

Call_000_10ff:
Jump_000_10ff:
    ld a, [$c155]
    ld h, a

Call_000_1103:
    add hl, de
    ld e, l

Jump_000_1105:
    ld d, h
    pop hl
    ret


Call_000_1108:
    push de
    call Call_000_117e
    pop de
    push de
    ld a, [$c1e2]

Jump_000_1111:
    ld l, a
    ld h, $00
    call $6f11
    call $70cb
    ld a, e
    ld [$c144], a
    ld a, d
    ld [$c145], a
    pop de
    ld a, [$c1e1]
    ld l, a
    ld h, $00
    call $6f11
    call $70cb
    ld a, e
    ld [$c148], a
    ld a, d

Call_000_1134:
    ld [$c149], a
    ret


Call_000_1138:
    ld a, $0b
    call Call_000_02ee

Jump_000_113d:
    ld de, $4000
    ld a, [$c12e]
    ld l, a
    ld a, [$c12f]
    add $08
    and $0f
    add d
    ld h, a
    ld a, [hl]
    ld [$c12a], a
    ld a, h
    sub d
    add $04
    and $0f
    add d
    ld h, a
    ld a, [hl]
    ld [$c12b], a
    ld a, [$c130]
    ld l, a

Jump_000_1161:
    ld a, [$c131]
    add d
    ld h, a
    ld a, [hl]
    ld [$c12c], a
    ld a, h
    sub d
    add $04
    and $0f
    add d
    ld h, a
    ld a, [hl]
    ld [$c12d], a
    ld a, $01
    call Call_000_02ee
    jp $564a


Call_000_117e:
    ld a, [$c12e]
    ld e, a
    ld a, [$c12f]
    ld d, a
    call $7074
    ld l, e
    ld h, d
    ld a, $0b
    call Call_000_02ee
    ld de, $4000
    ld a, h
    and $0f
    add d
    ld h, a
    ld a, [hl]
    ld [$c1e1], a
    ld a, h
    sub d
    add $04
    and $0f
    add d
    ld h, a
    ld a, [hl]
    ld [$c1e2], a
    ld a, $01
    jp Jump_000_02ee


Call_000_11ad:
Jump_000_11ad:
    ld a, $01
    ld [$c117], a
    ret


Call_000_11b3:
    push bc
    push de
    push hl
    ld a, [$c115]
    ld l, a
    ld a, [$c116]
    ld h, a
    inc de
    ld a, [de]
    ld [hl], a
    inc hl
    inc de

Jump_000_11c3:
    push de
    ld de, $2b50
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    pop de
    ld a, [de]
    ld [hl], a
    inc hl
    inc de
    ld a, [de]
    ld [hl], a
    inc hl

Jump_000_11d3:
    inc de
    ld a, $08
    ld [hl], a
    inc hl
    inc de
    ld a, $10
    ld [hl], a
    inc hl
    ld a, e
    add $04
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    ld [hl], a
    ld c, a
    inc hl
    ld a, e

Jump_000_11ea:
    add $03
    ld e, a
    ld a, d

Call_000_11ee:
    adc $00
    ld d, a
    ld a, [de]
    ld [hl], a
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld a, l
    ld [$c115], a

Jump_000_11fd:
    ld a, h
    ld [$c116], a
    pop hl
    pop de
    push hl
    ld hl, $12c9

Jump_000_1207:
    ld a, [$c306]
    cp $03
    jr z, jr_000_1211

    ld hl, $12e9

jr_000_1211:
    ld a, [$c16e]
    ld b, a

Jump_000_1215:
    ld a, c
    add b
    and $1f
    srl a
    srl a
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

Jump_000_1229:
    push hl
    push de
    ld hl, $0004
    add hl, de
    ld l, [hl]
    ld h, $00
    ld e, c
    ld d, b
    call $6f11
    ld bc, $0020
    call $6fbc
    ld c, e
    pop de

Jump_000_123f:
    ld hl, $0002
    add hl, de
    ld a, [hl]
    add $0c
    add c
    ld c, a
    ld a, [$c115]
    sub $07
    ld l, a
    ld a, [$c116]
    sbc $00
    ld h, a
    ld [hl], c
    pop hl
    ld c, [hl]
    ld a, [$c115]
    sub $0a
    ld l, a
    ld a, [$c116]
    sbc $00
    ld h, a
    ld a, [hl]
    add c
    ld [hl], a
    push de
    ld hl, $0005
    add hl, de
    ld l, [hl]
    ld h, $00
    ld a, [$c306]
    cp $03
    jr z, jr_000_128e

    ld de, $000c
    ld a, [$c100]
    and $40
    jr nz, jr_000_12a5

    ld de, $0013
    ld a, [$c100]
    and $80
    jr z, jr_000_12a5

    ld de, $001d
    jr jr_000_12a5

jr_000_128e:
    ld de, $0000
    ld a, [$c100]
    and $40
    jr nz, jr_000_12a5

    ld de, $000a
    ld a, [$c100]
    and $80
    jr z, jr_000_12a5

    ld de, $0013

jr_000_12a5:
    call $6f11
    ld bc, $0030
    call $6fbc
    ld c, e
    pop de
    ld hl, $0003
    add hl, de
    ld a, [hl]
    sub $08
    add c
    ld c, a
    ld a, [$c115]
    sub $06
    ld l, a
    ld a, [$c116]
    sbc $00
    ld h, a
    ld [hl], c
    pop hl
    pop bc

Call_000_12c8:
    ret


    ld sp, hl
    rst $38
    rst $38
    rst $38
    rlca

Call_000_12ce:
    nop
    rst $38
    rst $38
    inc c
    nop
    nop
    nop
    inc c
    nop
    ld bc, $0700
    nop
    ld bc, $f600
    rst $38
    ld bc, $f300
    rst $38
    nop
    nop
    ld a, [c]
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38

Call_000_12ed:
    dec bc
    nop
    rst $38
    rst $38
    ld c, $00
    nop
    nop
    inc c
    nop
    ld bc, $0700
    nop

Call_000_12fb:
    ld bc, $f600
    rst $38

Jump_000_12ff:
    ld bc, $f000
    rst $38
    nop
    nop
    ld a, [c]
    rst $38
    rst $38
    rst $38

Call_000_1309:
Jump_000_1309:
    ld a, [$c115]
    ld l, a
    ld a, [$c116]
    ld h, a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a

Call_000_1316:
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    push bc
    ld c, a

Call_000_1320:
    ld a, [$c1c0]
    ld b, a
    ld a, c
    sub b
    pop bc
    ld [hl+], a

Jump_000_1328:
    inc de
    ld a, [de]
    ld [hl+], a
    inc de

Call_000_132c:
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de

Call_000_1335:
    ld a, [de]
    ld [hl+], a
    ld [hl], $00
    ld a, l
    ld [$c115], a

Jump_000_133d:
    ld a, h
    ld [$c116], a
    ret


Call_000_1342:
    ld hl, $cb00
    ld a, l
    ld [$c113], a
    ld a, h
    ld [$c114], a
    ld hl, $c800
    ld a, l
    ld [$c115], a
    ld a, h
    ld [$c116], a
    ld [hl], $00
    xor a
    ld [$c165], a
    ld [$c1f1], a
    ret


Call_000_1362:
    ld de, $c800

jr_000_1365:
    ld a, [de]
    or a
    ret z

    push de
    inc de
    ld a, [de]
    ld l, a

Call_000_136c:
    inc de
    ld a, [de]
    ld h, a
    inc de
    ld a, h
    or a
    jr nz, jr_000_1387

    ld a, l
    cp $08
    jr c, jr_000_1381

    ld [$c1c2], a
    ld hl, $2be9

Jump_000_137f:
    jr jr_000_1387

jr_000_1381:
    ld [$c1c1], a

jr_000_1384:
    ld hl, $2a86

jr_000_1387:
    ld bc, $138c
    push bc
    jp hl


    pop de
    ld a, e

Jump_000_138e:
    add $0a
    ld e, a
    ld a, d
    adc $00
    ld d, a
    jr jr_000_1365

    ld d, a
    inc d
    ld e, b
    inc d
    ld e, d
    inc d
    ld e, l
    inc d
    ld h, c
    inc d
    ld h, [hl]
    inc d
    ld l, h
    inc d
    ld [hl], e
    inc d
    ld a, e
    inc d
    add h
    inc d
    adc [hl]
    inc d
    sbc c
    inc d
    and l
    inc d
    or d
    inc d
    ret nz

    inc d

jr_000_13b5:
    rst $08
    inc d
    rst $18
    inc d
    ldh a, [rNR14]
    ld [bc], a
    dec d
    dec d
    dec d

Jump_000_13bf:
    add hl, hl
    dec d
    ld a, $15

Jump_000_13c3:
    ld d, h
    dec d
    ld l, e
    dec d
    add e
    dec d
    sbc h
    dec d
    or [hl]
    dec d
    pop de
    dec d
    db $ed
    dec d
    ld a, [bc]
    ld d, $28
    ld d, $47
    ld d, $67
    ld d, $88
    ld d, $aa
    ld d, $cd
    ld d, $f1
    ld d, $16
    rla

Jump_000_13e3:
    inc a
    rla

jr_000_13e5:
    ld h, e
    rla

jr_000_13e7:
    adc e
    rla
    or h
    rla
    sbc $17
    add hl, bc
    jr @+$37

    jr jr_000_1454

    jr jr_000_1384

    jr jr_000_13b5

    jr jr_000_13e7

    jr jr_000_141a

    add hl, de
    ld d, d

Jump_000_13fc:
    add hl, de

Jump_000_13fd:
    add l

Jump_000_13fe:
    add hl, de

Jump_000_13ff:
    cp c

Call_000_1400:
    add hl, de
    xor $19
    inc h
    ld a, [de]
    ld e, e

Call_000_1406:
    ld a, [de]

Jump_000_1407:
    sub e
    ld a, [de]
    call z, Call_000_061a
    dec de
    ld b, c
    dec de
    ld a, l
    dec de
    cp d
    dec de
    ld hl, sp+$1b
    scf
    inc e
    ld [hl], a
    inc e
    cp b

jr_000_141a:
    inc e
    ld a, [$3d1c]
    dec e
    add c
    dec e
    add $1d

Call_000_1423:
    inc c
    ld e, $53
    ld e, $9b
    ld e, $e4
    ld e, $2e
    rra
    ld a, c
    rra
    push bc
    rra
    ld [de], a
    jr nz, jr_000_1494

    jr nz, jr_000_13e5

    jr nz, @+$01

    jr nz, jr_000_148a

    ld hl, $21a2
    push af
    ld hl, $2249
    sbc [hl]
    ld [hl+], a
    db $f4
    ld [hl+], a
    ld c, e
    inc hl
    and e
    inc hl
    db $fc
    inc hl
    ld d, [hl]
    inc h
    or c
    inc h
    dec c
    dec h
    ld l, d
    dec h
    ret z

jr_000_1454:
    dec h
    daa
    ld h, $ff
    ld e, [hl]
    rst $38
    ld l, $30
    rst $38
    ld e, $20
    jr nz, @+$01

    ld d, $18
    jr jr_000_147d

    rst $38
    ld [de], a
    ld [de], a
    inc d
    ld [de], a
    inc d
    rst $38
    ld c, $10
    db $10
    db $10
    db $10
    db $10
    rst $38
    inc c
    ld c, $0e
    inc c
    ld c, $0e
    ld c, $ff
    ld a, [bc]
    inc c

jr_000_147d:
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    rst $38
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld a, [bc]

jr_000_148a:
    ld a, [bc]
    ld a, [bc]
    inc c
    rst $38
    ld [$0a0a], sp
    ld [$0a0a], sp

jr_000_1494:
    ld [$0a0a], sp
    ld a, [bc]
    rst $38
    ld [$0808], sp
    ld a, [bc]
    ld [$0808], sp
    ld a, [bc]
    ld [$0a08], sp
    rst $38
    ld b, $08
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$06ff], sp
    ld [$0806], sp
    ld [$0806], sp
    ld b, $08
    ld [$0806], sp
    ld [$06ff], sp
    ld b, $08

Call_000_14c3:
Jump_000_14c3:
    ld b, $06
    ld [$0606], sp
    ld [$0606], sp

Call_000_14cb:
Jump_000_14cb:
    ld [$0806], sp
    rst $38
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $08

Call_000_14d7:
    ld b, $06
    ld b, $06

Jump_000_14db:
    ld b, $06

Call_000_14dd:
    ld [$04ff], sp
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $ff
    inc b
    ld b, $06
    ld b, $04
    ld b, $06
    ld b, $04
    ld b, $06

Call_000_14fb:
    ld b, $04
    ld b, $06

Call_000_14ff:
Jump_000_14ff:
    ld b, $06
    rst $38

Jump_000_1502:
    inc b
    ld b, $04
    ld b, $06
    inc b
    ld b, $04
    ld b, $06
    inc b
    ld b, $04
    ld b, $06
    inc b
    ld b, $06
    rst $38
    inc b
    inc b
    ld b, $04
    ld b, $04
    ld b, $04
    ld b, $04
    ld b, $04
    ld b, $04
    ld b, $04
    ld b, $04
    ld b, $ff
    inc b
    inc b
    ld b, $04

Jump_000_152d:
    inc b
    ld b, $04
    inc b

Call_000_1531:
    ld b, $04
    inc b
    ld b, $04
    inc b
    ld b, $04
    inc b
    ld b, $04
    ld b, $ff
    inc b

Call_000_153f:
Jump_000_153f:
    inc b
    inc b
    inc b
    ld b, $04
    inc b
    inc b
    ld b, $04
    inc b
    inc b
    ld b, $04
    inc b
    inc b
    ld b, $04
    inc b
    inc b
    ld b, $ff
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $04
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $04
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $ff
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b

Jump_000_1581:
    ld b, $ff
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    rst $38
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b

Call_000_15a2:
    inc b
    inc b
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    rst $38

Call_000_15b6:
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld [bc], a

Jump_000_15cb:
    inc b
    inc b
    inc b

Call_000_15ce:
    inc b
    inc b
    rst $38
    ld [bc], a
    inc b
    inc b
    ld [bc], a

Call_000_15d5:
    inc b
    inc b
    inc b
    ld [bc], a
    inc b
    inc b

Jump_000_15db:
    inc b
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    inc b
    inc b
    inc b
    rst $38
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    inc b
    inc b
    ld [bc], a

Call_000_15fa:
    inc b
    inc b
    ld [bc], a
    inc b
    inc b

Call_000_15ff:
Jump_000_15ff:
    ld [bc], a

Call_000_1600:
    inc b

Call_000_1601:
    inc b
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    inc b

Jump_000_1607:
    inc b
    inc b
    rst $38
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    inc b
    ld [bc], a

Call_000_1615:
    inc b

Call_000_1616:
Jump_000_1616:
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    inc b
    inc b

Call_000_161f:
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    inc b
    inc b
    rst $38
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b

Jump_000_1630:
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    inc b

Call_000_163f:
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    inc b
    rst $38
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    inc b
    rst $38
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    rst $38
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    rst $38
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    inc b

Call_000_16bf:
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a

Jump_000_16c9:
    inc b
    ld [bc], a
    inc b
    rst $38
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a

Jump_000_16e9:
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    rst $38
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b

Call_000_16fb:
    ld [bc], a
    ld [bc], a

Jump_000_16fd:
    ld [bc], a
    inc b

Call_000_16ff:
Jump_000_16ff:
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a

Call_000_1703:
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b

Call_000_1708:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    rst $38
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a

Jump_000_171d:
    inc b

Call_000_171e:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a

Call_000_172a:
    ld [bc], a
    ld [bc], a
    inc b

Jump_000_172d:
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    rst $38
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_173f:
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a

Call_000_174e:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    rst $38
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_176b:
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b

Jump_000_1777:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a

Call_000_177e:
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    rst $38
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b

Call_000_1797:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a

Jump_000_17aa:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    rst $38
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b

Call_000_17c2:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    rst $38
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a

Call_000_17e8:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b

Jump_000_17ef:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Jump_000_17f3:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_17ff:
Jump_000_17ff:
    inc b

Call_000_1800:
    ld [bc], a
    ld [bc], a

Call_000_1802:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    rst $38
    ld [bc], a
    ld [bc], a

Call_000_180b:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_181c:
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a

Jump_000_1820:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Jump_000_182f:
    ld [bc], a

Call_000_1830:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    rst $38
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_183c:
    ld [bc], a

Jump_000_183d:
    ld [bc], a
    ld [bc], a

Jump_000_183f:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_1848:
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
    inc b
    rst $38
    ld [bc], a
    ld [bc], a

Jump_000_1864:
    ld [bc], a
    ld [bc], a
    ld [bc], a

Jump_000_1867:
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
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Jump_000_187e:
    ld [bc], a

Call_000_187f:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_1884:
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
    inc b
    rst $38
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
    inc b
    rst $38
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

Call_000_18d6:
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

Call_000_18e0:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_18e7:
Jump_000_18e7:
    ld [bc], a

Call_000_18e8:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_18f3:
    ld [bc], a
    ld [bc], a

Jump_000_18f5:
    ld [bc], a
    ld [bc], a

Call_000_18f7:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Jump_000_18fe:
    ld [bc], a

Call_000_18ff:
Jump_000_18ff:
    ld [bc], a

Call_000_1900:
Jump_000_1900:
    ld [bc], a

Call_000_1901:
    ld [bc], a
    ld [bc], a

Call_000_1903:
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

Call_000_191b:
    ld [bc], a
    ld [bc], a

Jump_000_191d:
    ld [bc], a
    ld [bc], a
    rst $38

Call_000_1920:
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Jump_000_1925:
    ld [bc], a

Call_000_1926:
    ld [bc], a
    ld [bc], a

Jump_000_1928:
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

Jump_000_1935:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Jump_000_193d:
    ld [bc], a
    ld [bc], a

Jump_000_193f:
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

Jump_000_1949:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
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
    rst $38
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
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a

Jump_000_19af:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_19c1:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Jump_000_19cb:
    ld [bc], a
    ld [bc], a
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
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_19e0:
    ld [bc], a
    ld [bc], a
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
    rst $38
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Call_000_19f8:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Jump_000_19fd:
    ld [bc], a
    ld [bc], a

Call_000_19ff:
    nop

Call_000_1a00:
    ld [bc], a

Jump_000_1a01:
    ld [bc], a

Call_000_1a02:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_1a0f:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_1a2f:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Jump_000_1a35:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_1a3f:
Jump_000_1a3f:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Jump_000_1a7d:
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop

Jump_000_1abf:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a

Jump_000_1adb:
    ld [bc], a
    ld [bc], a

Jump_000_1add:
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Jump_000_1aeb:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Call_000_1afb:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_1aff:
Jump_000_1aff:
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_1b03:
    ld [bc], a

Call_000_1b04:
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a

Jump_000_1b14:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Call_000_1b18:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a

Jump_000_1b24:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Call_000_1b32:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Jump_000_1b3c:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop

Call_000_1b4b:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Call_000_1b84:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a

Jump_000_1b8e:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Call_000_1ba3:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a

Jump_000_1baf:
    nop
    ld [bc], a

Call_000_1bb1:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Call_000_1bb7:
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Call_000_1bce:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Jump_000_1be4:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    ld [bc], a

Call_000_1bfb:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Call_000_1bff:
Jump_000_1bff:
    ld [bc], a

Jump_000_1c00:
    nop
    ld [bc], a
    ld [bc], a

Call_000_1c03:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Call_000_1c0f:
    ld [bc], a
    nop

Call_000_1c11:
    ld [bc], a
    ld [bc], a

Jump_000_1c13:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Call_000_1c1f:
    ld [bc], a

Call_000_1c20:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_1c25:
    nop
    ld [bc], a

Call_000_1c27:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Call_000_1c3c:
    ld [bc], a

Jump_000_1c3d:
    ld [bc], a
    nop

Call_000_1c3f:
Jump_000_1c3f:
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_1c42:
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_1c4a:
    nop
    ld [bc], a

Call_000_1c4c:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Jump_000_1c58:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Call_000_1c61:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Call_000_1c80:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop

Call_000_1c99:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Call_000_1c9f:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Call_000_1cbd:
    ld [bc], a
    ld [bc], a

Call_000_1cbf:
Jump_000_1cbf:
    nop

Call_000_1cc0:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_1cc6:
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Jump_000_1ccf:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_1cdc:
    nop
    ld [bc], a
    ld [bc], a

Call_000_1cdf:
    nop

Call_000_1ce0:
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_1ce3:
Jump_000_1ce3:
    nop
    ld [bc], a
    ld [bc], a
    nop

Jump_000_1ce7:
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_1cea:
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_1cee:
    nop

Jump_000_1cef:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Call_000_1cf3:
    ld [bc], a

Call_000_1cf4:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38

Call_000_1cfa:
    nop

Call_000_1cfb:
    ld [bc], a

Call_000_1cfc:
    ld [bc], a

Call_000_1cfd:
Jump_000_1cfd:
    nop

Call_000_1cfe:
Jump_000_1cfe:
    ld [bc], a

Call_000_1cff:
Jump_000_1cff:
    ld [bc], a

Jump_000_1d00:
    nop

Call_000_1d01:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Call_000_1d0d:
    ld [bc], a

Call_000_1d0e:
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_1d20:
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Call_000_1d31:
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a

Jump_000_1d35:
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_1d3c:
    rst $38
    nop
    ld [bc], a

Call_000_1d3f:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_000_1d6f:
    nop
    ld [bc], a
    ld [bc], a

Call_000_1d72:
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Jump_000_1dc0:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Call_000_1dcc:
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Call_000_1de2:
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop

Jump_000_1def:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Call_000_1df8:
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop

Call_000_1dff:
Jump_000_1dff:
    ld [bc], a

Jump_000_1e00:
    ld [bc], a
    nop

Call_000_1e02:
    ld [bc], a

Call_000_1e03:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    nop

Call_000_1e0d:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Jump_000_1e1e:
    nop
    ld [bc], a

Jump_000_1e20:
    ld [bc], a
    nop
    ld [bc], a

Call_000_1e23:
    ld [bc], a

Jump_000_1e24:
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Jump_000_1e35:
    ld [bc], a
    nop

Jump_000_1e37:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop

Jump_000_1e3d:
    ld [bc], a

Call_000_1e3e:
    ld [bc], a

Call_000_1e3f:
Jump_000_1e3f:
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop

Call_000_1e4c:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Jump_000_1e75:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop

Jump_000_1e80:
    ld [bc], a
    ld [bc], a
    nop

Call_000_1e83:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Call_000_1e8b:
    nop
    ld [bc], a
    ld [bc], a
    nop

Jump_000_1e8f:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop

Jump_000_1eb5:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop

Jump_000_1ec1:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Call_000_1ecd:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop

Call_000_1ed2:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop

Jump_000_1edb:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Jump_000_1ee0:
    nop

Call_000_1ee1:
    ld [bc], a
    ld [bc], a
    rst $38
    nop

Call_000_1ee5:
Jump_000_1ee5:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop

Call_000_1eed:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop

Jump_000_1ef3:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Call_000_1efd:
Jump_000_1efd:
    nop
    ld [bc], a

Call_000_1eff:
Jump_000_1eff:
    ld [bc], a

Call_000_1f00:
Jump_000_1f00:
    nop

Jump_000_1f01:
    ld [bc], a
    nop

Call_000_1f03:
Jump_000_1f03:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Call_000_1f08:
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop

Jump_000_1f0f:
    ld [bc], a

Call_000_1f10:
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Call_000_1f1c:
Jump_000_1f1c:
    nop
    ld [bc], a

Jump_000_1f1e:
    nop

Call_000_1f1f:
Jump_000_1f1f:
    ld [bc], a

Call_000_1f20:
    ld [bc], a
    nop
    ld [bc], a

Call_000_1f23:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop

Call_000_1f2b:
    ld [bc], a
    ld [bc], a
    rst $38
    nop

Jump_000_1f2f:
    ld [bc], a

Jump_000_1f30:
    nop

Call_000_1f31:
    ld [bc], a

Call_000_1f32:
    ld [bc], a
    nop
    ld [bc], a

Jump_000_1f35:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop

Jump_000_1f3c:
    ld [bc], a
    ld [bc], a

Call_000_1f3e:
    nop

Call_000_1f3f:
Jump_000_1f3f:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Call_000_1f7e:
    nop

Jump_000_1f7f:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop

Call_000_1f9f:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Call_000_1fc0:
    ld [bc], a
    nop

Jump_000_1fc2:
    ld [bc], a

Jump_000_1fc3:
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop

Jump_000_1fcb:
    ld [bc], a
    nop
    ld [bc], a

Call_000_1fce:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Call_000_1fdc:
    nop
    ld [bc], a
    ld [bc], a

Call_000_1fdf:
    nop

Jump_000_1fe0:
    ld [bc], a

Jump_000_1fe1:
    nop

Call_000_1fe2:
    ld [bc], a

Call_000_1fe3:
Jump_000_1fe3:
    ld [bc], a
    nop
    ld [bc], a

Jump_000_1fe6:
    ld [bc], a

Jump_000_1fe7:
    nop

Call_000_1fe8:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Call_000_1ff3:
    ld [bc], a
    nop
    ld [bc], a
    nop

Jump_000_1ff7:
    ld [bc], a
    ld [bc], a

Jump_000_1ff9:
    nop
    ld [bc], a
    ld [bc], a

Jump_000_1ffc:
    nop

Jump_000_1ffd:
    ld [bc], a

Jump_000_1ffe:
    nop

Call_000_1fff:
Jump_000_1fff:
    ld [bc], a

Call_000_2000:
Jump_000_2000:
    ld [bc], a
    nop
    ld [bc], a

Call_000_2003:
    nop

Jump_000_2004:
    ld [bc], a
    ld [bc], a
    nop

Call_000_2007:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop

Jump_000_201d:
    ld [bc], a
    nop

Jump_000_201f:
    ld [bc], a
    ld [bc], a

Jump_000_2021:
    nop
    ld [bc], a
    nop
    ld [bc], a

Jump_000_2025:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Call_000_202b:
    nop

Call_000_202c:
    ld [bc], a

Jump_000_202d:
    ld [bc], a
    nop
    ld [bc], a

Call_000_2030:
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Jump_000_2035:
    nop
    ld [bc], a

Call_000_2037:
Jump_000_2037:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Call_000_203b:
    nop

Jump_000_203c:
    ld [bc], a

Jump_000_203d:
    nop
    ld [bc], a

Call_000_203f:
Jump_000_203f:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop

Call_000_2077:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Jump_000_207b:
    nop
    ld [bc], a

Jump_000_207d:
    ld [bc], a
    nop
    ld [bc], a

Call_000_2080:
Jump_000_2080:
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Jump_000_20a0:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop

Call_000_20ac:
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    nop
    ld [bc], a

Call_000_20b3:
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop

Jump_000_20bc:
    ld [bc], a
    nop
    ld [bc], a

Jump_000_20bf:
    ld [bc], a

Call_000_20c0:
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Call_000_20ce:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Call_000_20d4:
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Jump_000_20da:
    ld [bc], a

Call_000_20db:
Jump_000_20db:
    nop
    ld [bc], a

Call_000_20dd:
    nop

Jump_000_20de:
    ld [bc], a

Call_000_20df:
Jump_000_20df:
    ld [bc], a

Jump_000_20e0:
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Call_000_20ec:
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Call_000_20f3:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Call_000_20f9:
    nop
    ld [bc], a

Call_000_20fb:
    nop

Call_000_20fc:
Jump_000_20fc:
    ld [bc], a
    ld [bc], a
    rst $38

Call_000_20ff:
Jump_000_20ff:
    nop

Call_000_2100:
Jump_000_2100:
    ld [bc], a

Jump_000_2101:
    nop
    ld [bc], a
    nop

Call_000_2104:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

Jump_000_2110:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Call_000_2120:
    nop

Jump_000_2121:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Jump_000_212a:
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Jump_000_213d:
    ld [bc], a
    nop

Jump_000_213f:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Call_000_2144:
    ld [bc], a
    nop
    ld [bc], a

Call_000_2147:
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    nop
    ld [bc], a

Call_000_2154:
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Jump_000_216c:
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Jump_000_2175:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Call_000_2192:
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop

Jump_000_219d:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Jump_000_21cb:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop

Jump_000_21dd:
    ld [bc], a

Call_000_21de:
    nop
    ld [bc], a

Jump_000_21e0:
    ld [bc], a
    nop
    ld [bc], a

Call_000_21e3:
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Jump_000_21fe:
    nop

Call_000_21ff:
Jump_000_21ff:
    ld [bc], a

Call_000_2200:
Jump_000_2200:
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Jump_000_2207:
    nop

Call_000_2208:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Jump_000_2210:
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Call_000_2223:
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop

Jump_000_2234:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop

Jump_000_223d:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Call_000_2247:
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

Jump_000_2262:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

Call_000_227b:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Call_000_227f:
Jump_000_227f:
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop

Jump_000_2287:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Jump_000_22ca:
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

Jump_000_22df:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Call_000_22e3:
Jump_000_22e3:
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Jump_000_22fe:
    ld [bc], a

Call_000_22ff:
Jump_000_22ff:
    nop

Call_000_2300:
Jump_000_2300:
    ld [bc], a
    nop
    ld [bc], a

Jump_000_2303:
    nop
    ld [bc], a
    nop
    ld [bc], a

Jump_000_2307:
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

Jump_000_231c:
    ld [bc], a
    nop
    ld [bc], a

Jump_000_231f:
    ld [bc], a

Jump_000_2320:
    nop
    ld [bc], a

Call_000_2322:
    nop

Call_000_2323:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop

Call_000_2339:
    ld [bc], a
    nop
    ld [bc], a

Jump_000_233c:
    nop
    ld [bc], a
    nop

Call_000_233f:
Jump_000_233f:
    ld [bc], a

Call_000_2340:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Jump_000_235c:
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

Jump_000_2361:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Jump_000_23dc:
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Jump_000_23e7:
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

Call_000_23ec:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

Jump_000_23f3:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    rst $38

Jump_000_23fc:
    nop
    ld [bc], a
    nop

Call_000_23ff:
Jump_000_23ff:
    ld [bc], a

Call_000_2400:
    nop

Jump_000_2401:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

Call_000_2407:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Jump_000_2424:
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

Call_000_242b:
    ld [bc], a
    nop

Jump_000_242d:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Call_000_2433:
    nop
    ld [bc], a

Jump_000_2435:
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Call_000_243b:
    nop

Call_000_243c:
    ld [bc], a
    nop
    ld [bc], a

Call_000_243f:
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Call_000_246c:
Jump_000_246c:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Call_000_247f:
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Jump_000_24cb:
    nop
    ld [bc], a
    nop

Call_000_24ce:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

Jump_000_24db:
    ld [bc], a
    nop
    ld [bc], a
    nop

Call_000_24df:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a

Call_000_24ef:
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Call_000_24ff:
Jump_000_24ff:
    nop

Call_000_2500:
Jump_000_2500:
    ld [bc], a

Call_000_2501:
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

Jump_000_2508:
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Jump_000_251f:
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Jump_000_2525:
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Call_000_2537:
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

Jump_000_25bd:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Call_000_25da:
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Call_000_2600:
Jump_000_2600:
    nop
    ld [bc], a
    nop
    ld [bc], a

Call_000_2604:
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

Call_000_2623:
    ld [bc], a
    nop
    ld [bc], a
    rst $38

Jump_000_2627:
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Jump_000_263c:
    nop

Jump_000_263d:
    ld [bc], a
    nop

Call_000_263f:
Jump_000_263f:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

Call_000_264f:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

Call_000_2663:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

Call_000_2669:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

Jump_000_2681:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    rst $38

Call_000_2687:
    ld a, [$c118]
    ld c, a
    and $0f
    jr z, jr_000_2695

    ld a, c
    and $f0
    add $10
    ld c, a

jr_000_2695:
    ld a, c
    add a
    ld [$c11a], a
    ld a, [$c128]
    push af
    ld b, $02

jr_000_26a0:
    push bc
    push hl
    call Call_000_299f
    ld a, [$c128]
    or $10
    ld [$c128], a
    ld a, [$c118]
    and $0f
    jr z, jr_000_26d9

    ld c, a
    ld a, $10
    sub c
    jr z, jr_000_26d9

    ld c, a
    ld b, a
    push hl

jr_000_26bd:
    ld [hl], $00
    inc hl
    ld [hl], $00
    inc hl
    dec c

Call_000_26c4:
    jr nz, jr_000_26bd

    pop hl
    ld a, [$c11a]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_000_26d0:
    ld [hl], $00
    inc hl
    ld [hl], $00
    inc hl
    dec b
    jr nz, jr_000_26d0

Call_000_26d9:
Jump_000_26d9:
jr_000_26d9:
    pop hl
    ld a, [$c118]
    ld c, a
    and $0f
    jr z, jr_000_26e8

    ld a, c
    and $f8
    add $10
    ld c, a

jr_000_26e8:
    srl c

Call_000_26ea:
    srl c
    srl c
    srl c
    sla c
    sla c
    sla c

Call_000_26f6:
    sla c
    sla c
    ld b, $00
    add hl, bc
    add hl, bc
    inc de

Call_000_26ff:
Jump_000_26ff:
    inc de

Jump_000_2700:
    inc de

jr_000_2701:
    inc de
    pop bc
    dec b
    jr nz, jr_000_26a0

    pop af
    ld [$c128], a
    ret


    ld b, l
    daa
    ld b, [hl]
    daa
    ld b, [hl]
    daa
    ld h, e
    daa
    ld h, e
    daa
    add d
    daa
    add d
    daa
    and e
    daa

Jump_000_271b:
    and e
    daa
    cp d
    daa
    cp d
    daa
    sla a
    sla a
    nop
    nop
    nop
    nop
    nop
    nop
    jp c, $db27

    daa
    ldh [$27], a
    rrca
    jr z, jr_000_2770

    jr z, @+$6d

    jr z, jr_000_26d0

    jr z, jr_000_2701

    jr z, @-$0a

Jump_000_273c:
    jr z, jr_000_274d

    add hl, hl

Call_000_273f:
    inc l
    add hl, hl
    ld c, a
    add hl, hl
    ld [hl], h
    add hl, hl
    ret


    ld a, e
    and $01
    add a
    add a
    add a
    add a

jr_000_274d:
    add a
    add a
    add a
    or c
    ld c, a
    srl e
    ld a, d
    and $01
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    or b
    ld b, a
    srl d
    ret


    ld a, e
    and $03
    add a
    add a
    add a
    add a
    add a
    add a
    or c
    ld c, a
    srl e

jr_000_2770:
    srl e
    ld a, d
    and $03
    add a
    add a
    add a
    add a
    add a
    add a
    or b
    ld b, a
    srl d

Jump_000_277f:
    srl d
    ret


    ld a, e
    and $07
    add a
    add a
    add a
    add a
    add a
    or c
    ld c, a
    srl e
    srl e
    srl e
    ld a, d
    and $07
    add a
    add a
    add a
    add a
    add a
    or b
    ld b, a
    srl d
    srl d
    srl d
    ret


    ld a, e
    and $0f
    add a
    add a
    add a
    add a
    or c
    ld c, a
    ld e, $00
    ld a, d
    and $0f
    add a
    add a
    add a
    add a
    or b
    ld b, a
    ld d, $00
    ret


    ld a, e
    add a
    add a
    add a
    or c
    ld c, a
    ld e, $00
    ld a, d
    add a
    add a
    add a
    or b
    ld b, a
    ld d, $00
    ret


    ld a, e
    add a
    add a
    or c
    ld c, a
    ld e, $00
    ld a, d
    add a
    add a
    or b
    ld b, a
    ld d, $00
    ret


    ret


    sla c
    sla b
    ret


    sla e
    ld a, c
    srl a
    srl a
    srl a
    srl a
    srl a
    srl a
    or e
    ld e, a
    ld a, c
    and $3f
    add a
    add a
    ld c, a
    sla d
    ld a, b
    srl a
    srl a
    srl a

Call_000_2800:
Jump_000_2800:
    srl a
    srl a
    srl a
    or d
    ld d, a
    ld a, b
    and $3f
    add a
    add a
    ld b, a
    ret


    sla e
    ld a, c
    srl a
    srl a
    srl a
    srl a
    srl a
    or e
    ld e, a
    ld a, c
    and $1f
    add a
    add a
    add a
    ld c, a
    sla d
    ld a, b

Jump_000_2828:
    srl a
    srl a
    srl a
    srl a
    srl a
    or d
    ld d, a
    ld a, b
    and $1f
    add a

Call_000_2838:
    add a
    add a
    ld b, a

Call_000_283b:
    ret


    sla e
    sla e
    ld a, c
    srl a
    srl a
    srl a

Call_000_2847:
    srl a
    or e
    ld e, a
    ld a, c
    and $0f
    add a
    add a
    add a

Jump_000_2851:
    add a
    ld c, a
    sla d
    sla d
    ld a, b
    srl a
    srl a
    srl a
    srl a
    or d
    ld d, a
    ld a, b
    and $0f
    add a
    add a
    add a
    add a
    ld b, a
    ret


    sla e
    sla e
    ld a, c
    srl a
    srl a
    srl a
    or e
    ld e, a
    ld a, c
    and $07
    add a
    add a
    add a
    add a

Call_000_287f:
    add a
    ld c, a
    sla d
    sla d
    ld a, b
    srl a
    srl a
    srl a
    or d
    ld d, a
    ld a, b
    and $07
    add a
    add a
    add a
    add a
    add a
    ld b, a
    ret


    sla e
    sla e
    sla e
    ld a, c
    srl a
    srl a
    or e
    ld e, a
    ld a, c
    and $03
    add a
    add a
    add a
    add a
    add a
    add a
    ld c, a
    sla d
    sla d
    sla d
    ld a, b
    srl a
    srl a
    or d

Call_000_28bb:
    ld d, a
    ld a, b

Jump_000_28bd:
    and $03
    add a
    add a
    add a
    add a
    add a
    add a
    ld b, a
    ret


    sla e
    sla e
    sla e
    ld a, c
    srl a
    or e
    ld e, a

Jump_000_28d2:
    ld a, c
    and $01
    add a
    add a

Call_000_28d7:
    add a
    add a
    add a

Jump_000_28da:
    add a
    add a

Call_000_28dc:
    ld c, a
    sla d
    sla d
    sla d
    ld a, b

Call_000_28e4:
    srl a
    or d
    ld d, a
    ld a, b
    and $01
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    ld b, a
    ret


    sla e
    sla e
    sla e
    sla e

Jump_000_28fc:
    ld a, c
    or e
    ld e, a

Call_000_28ff:
Jump_000_28ff:
    ld c, $00
    sla d
    sla d
    sla d
    sla d
    ld a, b
    or d
    ld d, a
    ld b, $00
    ret


    sla e
    sla e

Call_000_2913:
    sla e
    sla e
    ld a, c
    add a
    or e
    ld e, a
    ld c, $00
    sla d
    sla d
    sla d
    sla d
    ld a, b
    add a
    or d
    ld d, a
    ld b, $00
    ret


    sla e
    sla e
    sla e
    sla e
    sla e
    ld a, c
    add a
    add a
    or e
    ld e, a

Call_000_293b:
    ld c, $00

Jump_000_293d:
    sla d
    sla d
    sla d
    sla d
    sla d
    ld a, b
    add a
    add a
    or d
    ld d, a
    ld b, $00
    ret


    sla e
    sla e
    sla e
    sla e
    sla e
    ld a, c
    add a
    add a
    add a
    or e
    ld e, a
    ld c, $00
    sla d
    sla d
    sla d
    sla d
    sla d
    ld a, b
    add a
    add a
    add a
    or d
    ld d, a
    ld b, $00
    ret


    sla e
    sla e
    sla e
    sla e
    sla e
    sla e
    ld a, c
    add a
    add a
    add a
    add a
    or e
    ld e, a
    ld c, $00
    sla d
    sla d
    sla d
    sla d
    sla d
    sla d
    ld a, b
    add a
    add a
    add a
    add a
    or d
    ld d, a
    ld b, $00
    ret


Call_000_299f:
    push hl
    ld hl, $1397
    ld a, [$c118]
    dec a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    pop hl

Jump_000_29b2:
    push bc
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    push de
    push hl
    ld a, [$c102]
    push af
    ld a, $0a
    call Call_000_02ee
    ld hl, $4000
    ld a, [$c128]

Jump_000_29ca:
    and $0f

Jump_000_29cc:
    add h
    ld h, a
    ld l, c
    ld c, [hl]
    ld l, b
    ld b, [hl]
    pop af
    call Call_000_02ee

Jump_000_29d6:
    ld a, h
    add $0d
    ld h, a
    push bc
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld a, [$c102]
    push af
    ld a, $0a
    call Call_000_02ee
    ld l, c
    ld c, [hl]
    ld l, b
    ld b, [hl]
    pop af
    call Call_000_02ee
    pop de
    ld hl, $2a07
    push hl
    ld hl, $270b
    ld a, [$c128]

Jump_000_29fc:
    add a
    add l
    ld l, a
    ld a, $00

Jump_000_2a01:
    adc h
    ld h, a
    ld a, [hl+]

Jump_000_2a04:
    ld h, [hl]
    ld l, a
    jp hl


    pop hl
    ld [hl], e
    inc hl
    ld [hl], d
    dec hl
    ld a, [$c11a]

Jump_000_2a0f:
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld a, [$c11a]
    ld e, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    pop de
    dec de
    dec de
    pop bc
    ld a, [bc]
    cp $ff
    ret z

    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a

Call_000_2a33:
    inc bc
    jp Jump_000_29b2


Call_000_2a37:
    push bc
    ld a, [$c128]

Call_000_2a3b:
    srl a
    srl a

Jump_000_2a3f:
    srl a
    ld b, a

Jump_000_2a42:
    ld a, [$c118]
    srl a
    srl a
    srl a
    ld c, a

Jump_000_2a4c:
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    dec c
    jp nz, Jump_000_2a4c

    dec b
    jp nz, Jump_000_2a42

    pop bc
    ret


    dec de
    dec de
    dec de
    ld a, [de]
    cp $01
    jr z, jr_000_2a9b

    cp $fe
    jr z, jr_000_2a9b

    inc a
    ld l, a
    ld a, [$c301]
    cp l
    jp c, Jump_000_2b4b

jr_000_2a9b:
    ld a, [de]
    ld h, a
    inc de
    inc de
    inc de
    ld a, [de]
    ld [$c163], a
    inc de
    ld a, [de]
    ld [$c164], a
    inc de
    ld a, [de]
    ld [$c128], a
    inc de
    ld a, [de]
    ld [$c118], a
    inc de
    ld a, [de]
    call Call_000_02ee
    inc de
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]

Jump_000_2abd:
    ld d, a
    ld e, l
    ld a, h
    cp $01
    jr z, jr_000_2af3

    cp $fe
    jr z, jr_000_2af3

    ld a, [$c302]

Jump_000_2acb:
    add $10
    ld l, a
    ld a, [$c304]
    srl a
    add l
    ld l, a
    ld a, [$c163]
    cp l
    jr nc, jr_000_2b4b

Jump_000_2adb:
    ld a, [$c304]
    srl a
    ld l, a
    ld a, [$c302]
    add $10
    sub l
    ld l, a
    ld a, [$c163]
    ld h, a
    ld a, [$c128]
    add h

Jump_000_2af0:
    cp l
    jr c, jr_000_2b4b

jr_000_2af3:
    ld a, [$c113]
    ld l, a
    ld a, [$c114]
    ld h, a

Call_000_2afb:
    call Call_000_2a37
    ld a, l

Jump_000_2aff:
    ld [$c113], a
    ld a, h
    ld [$c114], a
    ld a, $01
    call Call_000_02ee
    ld a, [$c165]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $c900
    add hl, de
    ld a, [$c163]
    ld e, a
    ld a, [$c164]
    ld d, a
    call Call_000_3d85
    ld a, [$c1f1]
    add a
    ld [$c108], a
    ld a, [$c1c1]
    ld [$c109], a
    ld a, [$c118]
    srl a
    srl a
    srl a
    srl a
    ld c, a
    ld a, [$c128]
    srl a
    srl a
    srl a
    ld b, a
    call Call_000_2d4a
    jp Jump_000_3d04


Jump_000_2b4b:
jr_000_2b4b:
    ld a, $01
    jp Jump_000_02ee


    ld a, [de]
    ld [$c163], a
    inc de
    ld a, [de]
    ld [$c164], a
    inc de
    ld a, [de]
    ld [$c128], a
    inc de
    ld a, [de]
    ld [$c118], a
    inc de
    inc de
    ld a, [de]
    ld c, a
    ld a, [$c165]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $c900
    add hl, de
    ld a, [$c163]
    ld e, a
    ld a, [$c164]
    ld d, a
    call Call_000_3d85
    ld a, c
    and $0f
    srl a
    srl a
    add a
    add $74
    ld [$c108], a
    ld a, $06
    ld [$c109], a
    ld a, [$c165]
    inc a
    ld [$c165], a
    ld bc, $0101
    jp Jump_000_3d04


    ld a, [de]
    ld [$c163], a
    inc de
    ld a, [de]
    ld [$c164], a
    inc de
    ld a, [de]
    ld [$c128], a
    inc de
    ld a, [de]
    ld [$c118], a
    inc de
    ld a, [de]
    ld c, a
    ld a, [$c165]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $c900
    add hl, de

Call_000_2bbf:
    ld a, [$c163]
    ld e, a
    ld a, [$c164]
    ld d, a
    call Call_000_3d85
    ld a, c
    and $0f
    srl a
    srl a
    add a
    add $7a

Jump_000_2bd4:
    ld [$c108], a
    ld a, $05
    ld [$c109], a
    ld a, [$c165]

Call_000_2bdf:
    inc a
    ld [$c165], a
    ld bc, $0101
    jp Jump_000_3d04


    dec de
    dec de
    dec de
    ld a, [de]
    ld [$c2ff], a
    inc de
    inc de
    inc de

Call_000_2bf3:
    ld a, [de]
    ld [$c1e5], a

Call_000_2bf7:
    inc de
    ld a, [de]
    ld [$c1e6], a
    inc de

Jump_000_2bfd:
    ld a, [de]
    ld [$c128], a
    inc de
    ld a, [de]
    ld [$c118], a
    inc de
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    push af
    inc de
    ld a, [de]
    ld l, a
    ld e, $00
    ld a, [$c128]
    cp $21
    jr nc, jr_000_2c25

    ld d, a
    ld a, $20
    sub d
    srl a
    ld e, a
    cp $0d
    jr c, jr_000_2c25

    ld e, $0c

jr_000_2c25:
    ld a, e
    ld [$c128], a
    ld h, $00

Call_000_2c2b:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl

Call_000_2c30:
    add hl, hl
    ld de, $52eb
    ld a, [$c1c2]
    cp $92
    jr z, jr_000_2c65

Call_000_2c3b:
    ld de, $598b
    cp $93
    jr z, jr_000_2c65

    ld de, $62fb
    cp $95
    jr z, jr_000_2c65

    ld de, $602b
    cp $94
    jr z, jr_000_2c65

    cp $96
    jr z, jr_000_2c65

    ld de, $64eb
    cp $98
    jr z, jr_000_2c65

    ld de, $684b
    cp $a0
    jr z, jr_000_2c65

    ld de, $676b

jr_000_2c65:
    ld a, [$c1e3]
    or a
    jr z, jr_000_2c6f

    inc de
    inc de
    inc de
    inc de

jr_000_2c6f:
    add hl, de
    ld a, [$c16e]
    ld e, a
    ld a, c
    add e
    and $1f
    ld [$c16d], a
    srl a
    srl a
    add a
    add a
    add a
    ld e, a
    ld d, $00
    add hl, de
    ld a, $fd
    call Call_000_02ee
    ld a, [hl+]
    ld c, a
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    srl a
    srl a
    srl a

Jump_000_2c98:
    add a
    ld e, a
    ld d, $00
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    call Call_000_02ee
    ld a, [$c113]
    ld l, a
    ld a, [$c114]
    ld h, a
    push hl
    call Call_000_2687
    ld a, l
    ld [$c113], a
    ld a, h
    ld [$c114], a
    ld a, $01
    call Call_000_02ee
    pop hl
    push hl
    call Call_000_0876
    pop hl
    call Call_000_0883
    ld a, [$c165]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $c900
    add hl, de
    ld a, [$c1e5]
    ld e, a
    ld a, [$c1e6]
    ld d, a
    call Call_000_3d85
    ld a, [$c1f1]
    add a
    ld [$c108], a
    ld c, $00
    ld a, [$c1c2]
    cp $92
    jr z, jr_000_2d13

    ld c, $01
    cp $93
    jr z, jr_000_2d13

Call_000_2cf3:
    ld c, $02
    cp $95
    jr z, jr_000_2d13

    ld c, $00
    cp $96
    jr z, jr_000_2d13

    ld c, $02
    cp $94
    jr z, jr_000_2d13

    ld c, $07
    cp $98
    jr z, jr_000_2d13

Call_000_2d0b:
    ld c, $04
    cp $a0
    jr z, jr_000_2d13

    ld c, $04

jr_000_2d13:
    ld a, c
    ld [$c109], a
    ld a, [$c118]
    ld c, a
    and $0f
    jr z, jr_000_2d25

    ld a, c
    and $f0
    add $10
    ld c, a

jr_000_2d25:
    srl c
    srl c
    srl c
    srl c

Call_000_2d2d:
    ld b, $04
    call Call_000_2d4a
    ld a, [$c128]
    cp $08
    jr c, jr_000_2d47

    ld a, e
    add $08
    ld e, a
    ld b, $02
    ld a, [$c108]
    add c
    add c
    ld [$c108], a

jr_000_2d47:
    jp Jump_000_3d36


Call_000_2d4a:
    push de
    xor a
    ld e, b

jr_000_2d4d:
    add c
    dec e
    jr nz, jr_000_2d4d

    ld e, a
    ld a, [$c165]
    add e
    ld [$c165], a
    ld a, [$c1f1]
    add e
    ld [$c1f1], a
    pop de
    ret


Call_000_2d62:
    ld a, $0b
    call Call_000_02ee
    ld a, [$c160]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $cb00
    add hl, de
    ld a, [$c15c]
    ld e, a
    ld a, [$c15d]
    ld d, a
    call Call_000_2687
    ld a, $01
    call Call_000_02ee
    ld a, [$c160]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $c900
    add hl, de
    ld a, [$c15e]
    ld e, a
    ld a, [$c15f]
    ld d, a
    call Call_000_3d85
    ld a, [$c160]
    add a
    ld [$c108], a
    ld a, [$c161]
    ld [$c109], a
    ld a, [$c118]
    ld c, a
    and $0f
    jr z, jr_000_2db8

    ld a, c
    and $f0
    add $10
    ld c, a

jr_000_2db8:
    srl c
    srl c
    srl c
    srl c
    ld a, c
    add a
    add a
    ld b, a
    ld a, [$c160]
    add b
    ld [$c160], a
    ld b, $04
    jp Jump_000_3d04


Call_000_2dd0:
    ld [$c10f], a
    ld hl, $2f10
    ld a, $16
    call Call_000_2fdc
    ld a, $02
    call Call_000_02ee
    ld de, $6c7c
    ld hl, $cb00
    ld bc, $0020
    call Call_000_321c
    ld a, $01
    call Call_000_02ee

Jump_000_2df1:
    ld de, $5701
    ld a, [$c10f]
    cp $00
    jr z, jr_000_2dfe

    ld de, $570e

jr_000_2dfe:
    call $57e2
    call $586a
    ld de, $57bf
    ld a, [$c10f]
    cp $00
    jr z, jr_000_2e11

    ld de, $57cd

jr_000_2e11:
    call $57e2
    call $4488
    call Call_000_11ad
    xor a
    ld [$c10e], a
    ld a, $20

Jump_000_2e20:
    ld [$c105], a

Jump_000_2e23:
    call Call_000_3ed2
    call $56e7
    ld hl, $c10e
    ld a, [$c100]
    and $40
    jr z, jr_000_2e4a

Call_000_2e33:
    ld a, [$c110]
    or a
    jr nz, jr_000_2e4e

Call_000_2e39:
    ld a, [hl]
    or a
    jr z, jr_000_2e4e

    dec [hl]
    ld a, $01
    ld [$c110], a
    ld a, $16
    call Call_000_026b
    jr jr_000_2e4e

jr_000_2e4a:
    xor a
    ld [$c110], a

jr_000_2e4e:
    ld hl, $c10e
    ld a, [$c100]
    and $80
    jr z, jr_000_2e70

    ld a, [$c111]
    or a
    jr nz, jr_000_2e74

    ld a, [hl]
    cp $04
    jr z, jr_000_2e74

    inc [hl]
    ld a, $01
    ld [$c111], a
    ld a, $16
    call Call_000_026b
    jr jr_000_2e74

jr_000_2e70:
    xor a
    ld [$c111], a

jr_000_2e74:
    ld a, [$c105]
    cp $5e
    ret z

    or a
    jr nz, jr_000_2eda

    ld a, [$c100]
    and $0b
    jr z, jr_000_2eda

    ld a, [$c10e]

Jump_000_2e87:
    cp $04
    jr z, jr_000_2ec2

    ld a, [$c10f]
    cp $00
    jr z, jr_000_2e97

    call $5908
    jr jr_000_2ec2

jr_000_2e97:
    ld a, [$c1fc]
    push af
    call $59b6
    ld c, a
    pop af
    ld [$c1fc], a
    ld a, $00
    ld [$c10f], a
    ld a, c
    or a
    jr z, jr_000_2eda

    pop hl
    call $4515
    call $4488
    ld de, $023c
    push de
    call $439a
    ld a, $01
    ld [$c105], a
    jp Jump_000_0405


jr_000_2ec2:
    ld a, $40

Call_000_2ec4:
    ld [$c105], a
    ld a, [$c10f]
    cp $00
    jr nz, jr_000_2eda

    ld a, [$c10e]

Jump_000_2ed1:
    cp $04
    jr z, jr_000_2eda

Call_000_2ed5:
    ld a, $17
    call Call_000_026b

jr_000_2eda:
    call $4457
    ld hl, $2f18
    call $44a7
    jp Jump_000_2e23


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, c
    ld b, b
    ld e, c
    dec bc
    nop

TitleScreenImageTable:: ; 0x2ef4
    dw $4000
    dw $54c0
    dw $0002

TitleScreenPaletteTable:: ; 0x2efa
    dw $5628
    dw $5790
    db $d0
    
Call_000_2eff:
Jump_000_2eff:
    db $57

Call_000_2f00:
    dw $0002

SelectCharacterImageTable:: ; 0x2f02
    dw $57d8
    dw $62d8
    dw $0002

SelectCharacterPaletteTable:: ; 0x2f08
    dw $652a
    dw $677c
    dw $67bc
    db $02

Jump_000_2f0f:
    db $00

SaveScreenImageTable::
Jump_000_2f10:
    dw $5740 
    dw $6930 
    dw $000d
    
SaveScreenPaletteTable::
    dw $6abc
    dw $6c48
    dw $6c88
    dw $000d
    
InventoryScreenImageTable::
    dw $4000
    dw $4920
    db $0c

Call_000_2f23:
    db $00

InventoryScreenPaletteTable:: ; 0x2f24
    db $72

Call_000_2f25:
    db $4b
    dw $4dc4
    dw $4e04
    dw $000c
    
CompanyLogoImageTable::
    dw $4000
    dw $49a0 
    dw $000f

CompanyLogoPaletteTable::
    dw $4b08
    dw $4c70
    dw $4cb0
    dw $000f
    
DeathScreenImageTable:: ; 0x2f3a
    dw $4000
    dw $46e0
    dw $000d

DeathScreenPaletteTable:: ; 0x2f40
Jump_000_2f40:
    dw $4920
    dw $4b60
    dw $4ba0
    dw $000d
    
PauseScreenImageTable::
    dw $4bb0
    dw $5420
    dw $000d

PauseScreenPaletteTable::
    dw $5588
    dw $56f0

jr_000_2f52:
    dw $5730
    dw $000d

    dw $4000
    dw $4210
    dw $00c7
    
    dw $4378
    dw $44e0
    dw $4520
    dw $00c7
    
    dw $4520 
    dw $4770 
    dw $00c7
    
    db $d8

jr_000_2f6b:
    db $48
    dw $4a40 
    dw $4a80

Call_000_2f70:
    dw $00c7

    db $20, $45
    db $70, $47
    dw $00c7

    db $d8, $48
    db $40, $4a
    db $80

jr_000_2f7d:
    db $4a
    db $c7

Jump_000_2f7f:
    db $00

    db $80, $4a
    db $e0, $4a
    dw $00c7

    db $48, $4c
    db $b0, $4d
    db $f0, $4d
    dw $00c7
    
    db $f0, $4d
    db $40, $4e
    dw $00c7
    
    db $a8, $4f
    db $10, $51
    db $50, $51
    dw $00c7
    
    db $80, $4a
    ldh [rWY], a

jr_000_2fa0:
    dw $00c7
    
    db $48, $4c
    db $b0, $4d
    db $f0, $4d
    dw $00c7
    
    db $bc

jr_000_2fab:
    ld c, [hl]
    cp h
    ld d, [hl]
    db $fc
    nop
    ld c, $59
    ld h, b
    ld e, e
    and b
    ld e, e
    db $fc
    nop
    nop

jr_000_2fb9:
    ld b, b
    ret nc

    ld c, h
    call nz, Call_000_3800
    ld c, [hl]
    and b
    ld c, a
    ldh [rVBK], a
    call nz, $e000
    ld c, a
    ld [hl], b
    ld e, a
    call nz, $d800
    ld h, b
    ld b, b
    ld h, d

Call_000_2fd0:
    add b
    ld h, d

Call_000_2fd2:
    call nz, Call_000_1400
    nop
    cp b
    cpl
    inc d
    nop
    add $2f

Call_000_2fdc:
    push af
    ld a, l
    ld [$c106], a
    ld a, h
    ld [$c107], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld bc, $0002
    add hl, bc
    ld a, [hl]
    call Call_000_02ee
    push hl
    ld hl, $8800
    ld bc, $1000
    call Call_000_323c
    ld a, $01
    ldh [rVBK], a

Call_000_2fff:
Jump_000_2fff:
    ld hl, $8800

Call_000_3002:
    ld bc, $1000
    call Call_000_323c
    xor a
    ldh [rVBK], a
    pop hl
    ld bc, $fffe
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $9800
    pop bc

jr_000_3017:
    push hl
    ld c, $12

jr_000_301a:
    call Call_000_328a

Jump_000_301d:
    ld a, [de]
    add $80
    ld [hl], a
    call Call_000_303a
    inc de
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec c
    jr nz, jr_000_301a

    pop hl
    inc l

Call_000_3032:
    dec b

Call_000_3033:
    jr nz, jr_000_3017

    ld a, $01
    jp Jump_000_02ee


Call_000_303a:
    push bc
    push hl

Jump_000_303c:
    push de

Jump_000_303d:
    ld a, [$c106]
    ld l, a
    ld a, [$c107]
    ld h, a
    ld bc, $0002
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld bc, $0002
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a

Jump_000_305b:
    pop de
    pop hl
    push de
    ld a, e
    add c
    ld e, a
    ld a, d
    adc b
    ld d, a
    ld a, $01
    ldh [rVBK], a
    call Call_000_328a
    ld a, [de]
    ld [hl], a
    xor a
    ldh [rVBK], a
    pop de
    pop bc
    ret


Call_000_3073:
Jump_000_3073:
    ld a, [$c102]
    push af
    ld a, $01
    call Call_000_02ee
    xor a
    push hl
    jr jr_000_308d

Call_000_3080:
Jump_000_3080:
    ld a, [$c102]
    push af
    ld a, $01
    call Call_000_02ee
    push hl
    ld a, [$c11f]

jr_000_308d:
    ld l, a
    ld h, $00
    push hl
    add hl, hl
    pop de
    add hl, de
    pop de
    add hl, de
    ld c, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, c
    ld [$c10a], a
    call Call_000_02ee
    ld hl, $0280
    add hl, de
    call Call_000_31fd
    ld a, l
    ld [$c1d2], a
    ld a, h
    ld [$c1d3], a
    ld a, [$c102]
    ld [$c10b], a

Call_000_30b8:
    xor a
    ld [$c108], a
    ld [$c109], a
    ld bc, $0140

Jump_000_30c2:
    push bc
    push de

Call_000_30c4:
    ld a, [$c10a]
    call Call_000_02ee
    ld a, [$c108]
    and $0f

Call_000_30cf:
Jump_000_30cf:
    inc a
    ld l, a
    ld a, [$c174]
    cp l
    jr nc, jr_000_314b

    ld a, [$c176]
    cp l
    jr c, jr_000_314b

    ld a, [$c108]
    ld l, a
    ld a, [$c109]
    ld h, a
    srl h
    rr l
    ld a, l
    srl a
    srl a
    srl a

Call_000_30f0:
    inc a
    ld l, a
    ld a, [$c170]
    cp l
    jr nc, jr_000_314b

    ld a, [$c172]
    cp l
    jr c, jr_000_314b

Call_000_30fe:
    ld a, [$c108]
    and $0f

Call_000_3103:
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, h
    add $98
    ld h, a
    ld a, [$c108]
    ld c, a
    ld a, [$c109]
    ld b, a
    srl b
    rr c
    srl b
    rr c
    srl b
    rr c
    srl b
    rr c
    add hl, bc
    push hl
    ld hl, $0140
    add hl, de
    call Call_000_31fd
    ld a, [hl]
    pop hl
    and $f7
    ld c, a
    call Call_000_328a
    ld a, [$c108]
    ld [hl], a

Call_000_313c:
    ld a, $01
    ldh [rVBK], a
    ld a, [$c109]
    add a
    add a
    add a
    or c
    ld [hl], a
    xor a
    ldh [rVBK], a

jr_000_314b:
    ld a, [$c10a]
    call Call_000_02ee
    ld a, [$c108]
    and $0f
    inc a
    ld l, a
    ld a, [$c174]
    cp l

Jump_000_315c:
    jr nc, jr_000_31cf

    ld a, [$c176]
    cp l
    jr c, jr_000_31cf

    ld a, [$c108]
    ld l, a
    ld a, [$c109]
    ld h, a
    srl h
    rr l
    ld a, l
    srl a
    srl a
    srl a
    inc a
    ld l, a
    ld a, [$c170]
    cp l
    jr nc, jr_000_31cf

Call_000_317f:
    ld a, [$c172]
    cp l
    jr c, jr_000_31cf

    ld a, [de]
    ld c, a
    ld hl, $0140
    add hl, de
    call Call_000_31fd
    ld a, [hl]
    and $08
    srl a
    srl a
    srl a
    ld h, a
    ld l, c
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c10b]
    call Call_000_02ee
    ld a, [$c1d2]
    ld e, a
    ld a, [$c1d3]
    ld d, a
    add hl, de
    ld e, l
    ld d, h
    call Call_000_31ef
    ld a, [$c108]
    add $80
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, h
    add $88
    ld h, a
    ld a, [$c109]
    ldh [rVBK], a
    ld bc, $0002
    call Call_000_3251
    xor a
    ldh [rVBK], a

jr_000_31cf:
    ld a, [$c108]
    add $01
    ld [$c108], a
    ld a, [$c109]
    adc $00
    ld [$c109], a
    pop de
    inc de
    call Call_000_320b
    pop bc
    dec bc
    ld a, b
    or c
    jp nz, Jump_000_30c2

    pop af
    jp Jump_000_02ee


Call_000_31ef:
    ld a, d
    cp $80
    ret c

    sub $40
    ld d, a
    ld a, [$c102]
    inc a
    jp Jump_000_02ee


Call_000_31fd:
    ld a, h
    cp $80
    ret c

    sub $40
    ld h, a
    ld a, [$c102]
    inc a
    jp Jump_000_02ee


Call_000_320b:
    ld a, d
    cp $80
    ret c

    sub $40
    ld d, a
    ld a, [$c10a]
    inc a
    ld [$c10a], a
    jp Jump_000_02ee


Call_000_321c:
jr_000_321c:
    ld a, [de]
    ld [hl+], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_321c

    ret


jr_000_3225:
    ldh a, [rSTAT]
    and $03
    jr z, jr_000_3225

Call_000_322b:
jr_000_322b:
    ldh a, [rSTAT]
    and $03

Jump_000_322f:
    jr nz, jr_000_322b

    ld a, [de]

Jump_000_3232:
    add $80
    ld [hl+], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_3225

Call_000_323b:
    ret


Call_000_323c:
jr_000_323c:
    ldh a, [rSTAT]
    and $03
    jr z, jr_000_323c

jr_000_3242:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_3242

    ld a, [de]
    ld [hl+], a
    inc de
    dec bc

Call_000_324c:
    ld a, b
    or c
    jr nz, jr_000_323c

    ret


Call_000_3251:
jr_000_3251:
    ldh a, [rSTAT]
    and $03
    jr z, jr_000_3251

jr_000_3257:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_3257

    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]

Call_000_3270:
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, d
    cp $80
    jr c, jr_000_3284

    sub $40
    ld d, a
    ld a, [$c102]

Jump_000_3280:
    inc a
    call Call_000_02ee

jr_000_3284:
    dec bc
    ld a, b
    or c
    jr nz, jr_000_3251

    ret


Call_000_328a:
jr_000_328a:
    ldh a, [rSTAT]
    and $03
    jr z, jr_000_328a

jr_000_3290:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_3290

    ret


Jump_000_3297:
    call Call_000_02ee
    push de
    ld c, $00
    ld b, $20

jr_000_329f:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [$c105]
    and $1f
    call Call_000_32ef
    call Call_000_328a
    ld a, c
    ldh [rBCPS], a
    ld a, e
    ldh [rBCPD], a
    inc c
    call Call_000_328a
    ld a, c
    ldh [rBCPS], a
    ld a, d
    ldh [rBCPD], a
    inc c
    dec b

Jump_000_32c0:
    jr nz, jr_000_329f

    pop hl
    ld c, $00
    ld b, $20

jr_000_32c7:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [$c105]
    and $1f
    call Call_000_32ef
    call Call_000_328a
    ld a, c
    ldh [rOCPS], a
    ld a, e
    ldh [rOCPD], a
    inc c
    call Call_000_328a
    ld a, c
    ldh [rOCPS], a
    ld a, d
    ldh [rOCPD], a
    inc c
    dec b
    jr nz, jr_000_32c7

    ld a, $01
    jp Jump_000_02ee


Call_000_32ef:
    push bc
    push hl
    ld l, a
    ld a, e
    and $1f
    sub l
    jr nc, jr_000_32f9

    xor a

jr_000_32f9:
    ld c, a
    ld a, e

Call_000_32fb:
    and $e0
    srl a

Call_000_32ff:
Jump_000_32ff:
    srl a
    srl a
    srl a
    srl a

Jump_000_3307:
    ld h, a
    ld a, d
    and $03
    add a
    add a
    add a
    or h
    sub l
    jr nc, jr_000_3313

    xor a

jr_000_3313:
    ld h, a
    and $07
    add a
    add a
    add a
    add a
    add a
    or c
    ld c, a
    ld a, h
    and $18
    srl a
    srl a
    srl a
    ld b, a
    ld a, d
    and $7c
    srl a
    srl a
    sub l
    jr nc, jr_000_3332

    xor a

jr_000_3332:
    add a

Call_000_3333:
    add a
    or b

Jump_000_3335:
    ld b, a
    ld e, c
    ld d, b

Jump_000_3338:
    pop hl
    pop bc
    ret


Call_000_333b:
    ld hl, $2ef4
    ld a, $14

Jump_000_3340:
    call Call_000_2fdc
    xor a
    ld [$c10e], a
    call $4488
    ld a, $20

Call_000_334c:
    ld [$c105], a
    ld hl, $0300
    ld a, l
    ld [$c1c4], a
    ld a, h
    ld [$c1c5], a

Jump_000_335a:
jr_000_335a:
    call Call_000_3ed2
    ld a, [$c105]
    or a
    call z, Call_000_08d5
    ld a, [$c105]
    or a
    jr nz, jr_000_3383

    ld a, [$c1c4]
    dec a
    ld [$c1c4], a
    cp $ff
    jr nz, jr_000_3383

    ld a, [$c1c5]
    dec a
    ld [$c1c5], a
    cp $ff
    jr nz, jr_000_3383

    jp $478f


jr_000_3383:
    ld a, [$c105]
    cp $5e

Call_000_3388:
    ret z

    or a
    jr nz, jr_000_339d

    ld a, [$c100]
    and $08
    jr z, jr_000_339d

    ld a, $40
    ld [$c105], a
    ld a, $0f
    call Call_000_026b

jr_000_339d:
    ld a, [$c105]
    push af
    ld hl, $2efc
    call $44a7
    pop af
    ld c, a
    ld a, [$c105]
    or a
    jr nz, jr_000_335a

    ld a, c
    cp $01
    jr nz, jr_000_335a

    di
    ld hl, $409c
    ld de, $0480
    ld bc, $00c3
    ld a, $ff

Jump_000_33c0:
    call Call_000_02ee
    call $4000
    ld a, $01

Jump_000_33c8:
    call Call_000_02ee
    ld bc, $1388
    call Call_000_3d7f
    ld hl, $4d1a
    ld de, $0480
    ld bc, $00cc
    ld a, $ff
    call Call_000_02ee
    call $4000
    ld a, $01
    call Call_000_02ee
    ei
    jp Jump_000_335a


Call_000_33eb:
    ld hl, $2f02
    ld a, $14
    call Call_000_2fdc
    ld a, $02
    call Call_000_02ee
    ld de, $6afc
    ld hl, $cb00
    ld bc, $0180
    call Call_000_321c
    ld de, $67fc
    ld hl, $cc80
    ld bc, $0300
    call Call_000_321c
    ld de, $6c7c
    ld hl, $cf80
    ld bc, $0020
    call Call_000_321c
    ld a, $01
    call Call_000_02ee
    call Call_000_11ad

Call_000_3424:
    xor a
    ld [$c10e], a
    ld a, $28

Call_000_342a:
    ld [$c10c], a

Jump_000_342d:
    ld a, $38
    ld [$c10d], a
    ld a, $20

Call_000_3434:
    ld [$c105], a

jr_000_3437:
    call $48ea
    call $493a
    call $48bd
    call Call_000_3ed2
    call Call_000_3c37
    call $4457
    call $4494
    ld a, [$c105]
    or a
    jr nz, jr_000_3480

    ld a, [$c10c]
    cp $28
    jr z, jr_000_346c

    sub $08
    ld [$c10c], a
    cp $c0
    jr nz, jr_000_3480

    ld a, [$c10e]
    xor $01
    ld [$c10e], a
    jr jr_000_3480

jr_000_346c:
    ld a, [$c100]
    and $30
    jr z, jr_000_3480

    ld a, [$c10c]
    sub $08
    ld [$c10c], a
    ld a, $00
    call Call_000_026b

jr_000_3480:
    ld a, [$c10c]
    cp $28
    jr nz, jr_000_34a1

    ld a, [$c105]
    cp $5e
    ret z

    or a
    jr nz, jr_000_34a1

    ld a, [$c100]
    and $09
    jr z, jr_000_34a1

    ld a, $40
    ld [$c105], a
    ld a, $17
    call Call_000_026b

jr_000_34a1:
    ld hl, $2f0a
    call $44a7
    jr jr_000_3437

Call_000_34a9:
    ld hl, $9841
    ld e, $00
    ld d, $0f
    ld b, $0b

jr_000_34b2:
    push hl
    ld c, $08

jr_000_34b5:
    call Call_000_328a
    ld [hl], e
    ld a, $01
    ldh [rVBK], a
    ld [hl], d
    xor a
    ldh [rVBK], a
    push bc
    ld bc, $0020
    add hl, bc
    pop bc
    inc e
    dec c
    jr nz, jr_000_34b5

Call_000_34cb:
Jump_000_34cb:
    pop hl
    inc l
    dec b
    jr nz, jr_000_34b2

    ret


Call_000_34d1:
    ld hl, $9841
    ld b, $0b

jr_000_34d6:
    push hl
    ld c, $08

jr_000_34d9:
    call Call_000_328a
    ld a, $01
    ldh [rVBK], a
    ld a, [de]
    or $08
    ld [hl], a
    xor a
    ldh [rVBK], a
    push bc
    ld bc, $0020
    add hl, bc
    pop bc
    inc de
    dec c
    jr nz, jr_000_34d9

    pop hl
    inc l
    dec b

Call_000_34f4:
    jr nz, jr_000_34d6

    ret


Call_000_34f7:
    ld a, $01
    ldh [rVBK], a

Call_000_34fb:
    ld hl, $9000

Call_000_34fe:
    ld b, $b0

jr_000_3500:
    ldh a, [rSTAT]

Call_000_3502:
    and $03
    jr z, jr_000_3500

jr_000_3506:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_3506

    ld a, $ff
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_000_3500

    xor a
    ldh [rVBK], a
    ret


Call_000_351d:
    ld a, $05
    call Call_000_02ee
    ld hl, $5ee7
    ld b, $2d

jr_000_3527:
    push bc
    call $603d
    pop bc
    dec b
    jr nz, jr_000_3527

    ld a, $01
    call Call_000_02ee
    ld a, $09
    ld hl, $4040
    jp Jump_000_353c


Call_000_353c:
Jump_000_353c:
    call Call_000_02ee
    ld c, $00
    ld b, $20

jr_000_3543:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [$c105]
    and $1f
    call Call_000_32ef
    call Call_000_328a
    ld a, c
    ldh [rBCPS], a
    ld a, e
    ldh [rBCPD], a
    inc c
    call Call_000_328a
    ld a, c
    ldh [rBCPS], a
    ld a, d
    ldh [rBCPD], a
    inc c
    dec b
    jr nz, jr_000_3543

    ld a, $01
    jp Jump_000_02ee


    add hl, bc
    nop
    or b
    ld b, d
    ld b, b
    ld b, c
    ld [$0943], sp
    nop
    nop
    ld b, b
    add hl, bc
    nop
    sub b
    ld c, a
    ldh a, [rKEY1]
    add sp, $4f
    add hl, bc
    nop
    add b
    ld b, b
    add hl, bc
    nop
    nop
    ld d, d
    ld b, b
    ld d, b
    ld e, b
    ld d, d
    add hl, bc
    nop
    ret nz

    ld b, b
    add hl, bc
    nop
    ld d, b
    ld d, h
    or b
    ld d, d
    xor b
    ld d, h
    add hl, bc
    nop
    nop
    ld b, c
    add hl, bc
    nop
    nop
    ld d, [hl]
    nop
    ld d, l
    ld e, b
    ld d, [hl]
    add hl, bc
    nop
    add b
    ld b, b
    add hl, bc
    nop
    or b
    ld d, a
    or b
    ld d, [hl]
    ld [$0958], sp
    nop
    ret nz

    ld b, b
    add hl, bc

Jump_000_35b4:
    nop
    ld h, b
    ld e, c
    ld h, b
    ld e, b
    cp b
    ld e, c
    add hl, bc
    nop
    nop
    ld b, c

Call_000_35bf:
Jump_000_35bf:
    ld hl, $3577
    ld a, [$c1d4]
    or a
    jr z, jr_000_35d5

    ld hl, $3583

Jump_000_35cb:
    ld a, [$c1d4]
    cp $01
    jr z, jr_000_35d5

    ld hl, $358f

jr_000_35d5:
    jr jr_000_35f2

Call_000_35d7:
    ld hl, $35b3

Jump_000_35da:
    ld a, [$c123]
    cp $80
    jr z, jr_000_35eb

    ld hl, $359b
    cp $81
    jr z, jr_000_35eb

    ld hl, $35a7

jr_000_35eb:
    jr jr_000_35f2

Call_000_35ed:
    ld hl, $356b
    jr jr_000_35f2

jr_000_35f2:
    ld c, [hl]
    inc hl
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl+]
    ld [$c1d2], a
    ld a, [hl+]
    ld [$c1d3], a
    push bc
    push hl
    ld a, c
    call Call_000_02ee
    ld a, $01
    ldh [rVBK], a
    ld hl, $9000
    ld b, $58

jr_000_3610:
    push bc
    push hl
    ld a, [de]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c1d2]
    ld c, a
    ld a, [$c1d3]
    ld b, a
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    ld a, $04

jr_000_3628:
    push af
    call Call_000_328a
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]

Jump_000_3636:
    ld [hl+], a
    inc bc
    pop af
    dec a
    jr nz, jr_000_3628

    inc de
    pop bc
    dec b
    jr nz, jr_000_3610

    xor a
    ldh [rVBK], a
    pop hl
    pop bc
    ld a, $01
    call Call_000_02ee
    ld e, [hl]
    inc hl
    ld d, [hl]

Jump_000_364e:
    inc hl
    push hl
    ld a, c
    call Call_000_02ee
    call Call_000_34d1
    pop hl
    ld a, $01
    call Call_000_02ee
    ld c, [hl]
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    jp Jump_000_353c


Call_000_3667:
    ld a, $0c
    ld hl, $4dc4
    jp Jump_000_353c


Call_000_366f:
    call $4515
    xor a
    call Call_000_3728
    ld a, $01
    ld [$c105], a
    ld a, $ff
    ld [$c123], a
    ld hl, $2f26
    call $44a7
    call Call_000_08ce
    ld a, $fa
    call Call_000_02ee
    ld a, [$c1f4]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $459b
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, $01
    call Call_000_02ee
    ld hl, $0f00
    ld a, $fa
    call Call_000_3dda

jr_000_36ab:
    call Call_000_3ed2
    call $4870
    call $4918
    ld c, $00
    call Call_000_3c2f
    call Call_000_08b9
    call Call_000_08c0
    call $4975
    call Call_000_11ad
    call $4457
    ld a, [$c100]
    and $09

Call_000_36cd:
    jp nz, $49ed

    jr jr_000_36ab

Call_000_36d2:
    ld bc, $63ee
    ld hl, $0f00
    ld a, $fa
    call Call_000_3dda
    ld de, $4597
    ld a, [$c123]
    cp $04
    jr c, jr_000_3727

    cp $0c
    jr c, jr_000_36fd

    cp $e0
    jr c, jr_000_36f3

    sub $e0
    jr jr_000_36fd

jr_000_36f3:
    cp $81
    jr nz, jr_000_3727

Jump_000_36f7:
    ld de, $4599
    ld a, [$c1f3]

jr_000_36fd:
    sub $04
    ld l, a

Call_000_3700:
Jump_000_3700:
    ld h, $00
    ld bc, $c1e7
    add hl, bc
    ld a, [hl]
    cp $00
    jr z, jr_000_3727

    ld a, $fa
    call Call_000_02ee
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, $01
    call Call_000_02ee
    ld hl, $0f00
    ld a, $fa
    jp Jump_000_3dda


jr_000_3727:
    ret


Call_000_3728:
    or a
    jr z, jr_000_3735

    ld hl, $2faa
    ld a, $20
    call Call_000_2fdc

Call_000_3733:
    jr jr_000_3743

Jump_000_3735:
jr_000_3735:
    ld hl, $2f1e
    ld a, $20
    call Call_000_2fdc
    call Call_000_34a9
    call Call_000_34f7

jr_000_3743:
    ld a, $0c
    call Call_000_02ee
    ld de, $4e84
    ld hl, $cb00
    ld bc, $0080
    call Call_000_323c
    ld a, $01
    call Call_000_02ee
    call Call_000_37b8
    ld a, [$c11b]
    or a
    jr z, jr_000_37b1

    ld de, $98ec
    ld hl, $98ac
    ld bc, $0008
    call Call_000_323c
    ld de, $990c
    ld hl, $98cc
    ld bc, $0008
    call Call_000_323c
    ld de, $992c
    ld hl, $98ec
    ld bc, $0008
    call Call_000_323c
    ld a, $01

Jump_000_3788:
    ldh [rVBK], a
    ld de, $98ec
    ld hl, $98ac
    ld bc, $0008
    call Call_000_323c
    ld de, $990c
    ld hl, $98cc
    ld bc, $0008
    call Call_000_323c
    ld de, $992c
    ld hl, $98ec
    ld bc, $0008
    call Call_000_323c
    xor a
    ldh [rVBK], a

jr_000_37b1:
    call Call_000_11ad
    call $4488
    ret


Call_000_37b8:
    ld de, $4cb0
    jr jr_000_37c0

Call_000_37bd:
    ld de, $5430

Jump_000_37c0:
jr_000_37c0:
    ld a, $01
    ldh [rVBK], a
    ld a, $0f
    call Call_000_02ee
    ld hl, $8800
    ld bc, $0800
    call Call_000_323c
    ld a, $01
    call Call_000_02ee
    xor a
    ldh [rVBK], a
    ret


Call_000_37db:
    ld a, $05
    ld hl, $6149
    jp Jump_000_02a0


Call_000_37e3:
    ld a, [$c123]
    cp $0c
    jr nc, jr_000_3814

    call Call_000_3b41
    call Call_000_3b5d
    call Call_000_3b79
    call Call_000_3ba2
    call Call_000_3a92
    ld a, [$c100]
    and $02
    jr z, jr_000_380f

Call_000_3800:
Jump_000_3800:
    ld a, [$c1fb]

Call_000_3803:
    or a
    ret nz

    dec a
    ld [$c1fb], a
    ld a, $5c

Call_000_380b:
    ld [$c105], a
    ret


jr_000_380f:
    xor a
    ld [$c1fb], a
    ret


jr_000_3814:
    cp $e0
    jr c, jr_000_382a

    call Call_000_3b41
    call Call_000_3b5d
    call Call_000_3bd4
    call Call_000_3bfd
    call Call_000_3977
    jp Jump_000_38f7


Call_000_382a:
jr_000_382a:
    call Call_000_38ac
    call Call_000_38d1
    call Call_000_383c
    call Call_000_3872
    call Call_000_3980
    jp Jump_000_38f7


Call_000_383c:
Jump_000_383c:
    ld a, [$c100]

Call_000_383f:
    and $40
    jr z, jr_000_386d

    ld a, [$c110]
    or a
    ret nz

    ld a, $ff
    ld [$c110], a
    ld a, [$c123]
    cp $0c
    jr z, jr_000_3863

    cp $81
    ret c

    dec a
    ld [$c123], a
    call Call_000_35d7
    ld a, $00
    jp Jump_000_026b


jr_000_3863:
    ld a, [$c1ae]
    or a
    ret z

    dec a
    ld [$c1ae], a
    ret


jr_000_386d:
    xor a
    ld [$c110], a
    ret


Call_000_3872:
    ld a, [$c100]
    and $80
    jr z, jr_000_38a7

    ld a, [$c111]
    or a
    ret nz

    ld a, $ff
    ld [$c111], a
    ld a, [$c123]
    cp $0c
    jr z, jr_000_389c

    cp $80
    ret c

    cp $82
    ret nc

    inc a
    ld [$c123], a
    call Call_000_35d7
    ld a, $00
    jp Jump_000_026b


jr_000_389c:
    ld a, [$c1ae]
    cp $0c
    ret z

    inc a
    ld [$c1ae], a
    ret


jr_000_38a7:
    xor a
    ld [$c111], a
    ret


Call_000_38ac:
    ld a, [$c100]
    and $20
    ret z

    ld a, [$c123]
    cp $0c
    ret nz

    ld a, [$c1d4]

Call_000_38bb:
    or a
    ret z

    dec a
    ld [$c1d4], a
    ld a, $00

Jump_000_38c3:
    call Call_000_026b

Call_000_38c6:
    call Call_000_35bf
    call $42d3
    ld b, $20
    jp Jump_000_02b2


Call_000_38d1:
    ld a, [$c100]
    and $10
    ret z

Call_000_38d7:
    ld a, [$c123]
    cp $0c
    ret nz

    ld a, [$c1d4]
    cp $02
    ret z

Call_000_38e3:
    inc a
    ld [$c1d4], a
    ld a, $00
    call Call_000_026b
    call Call_000_35bf

Call_000_38ef:
    call $42d3
    ld b, $20
    jp Jump_000_02b2


Jump_000_38f7:
    ld a, [$c100]
    and $02

Call_000_38fc:
    jr z, jr_000_3934

    ld a, [$c1fb]
    or a

Call_000_3902:
    ret nz

    dec a
    ld [$c1fb], a
    ld a, [$c123]
    cp $0c
    jr z, jr_000_3939

    cp $0e
    jr z, jr_000_394f

    cp $12
    jr z, jr_000_395f

    cp $80
    ret c

    ld a, $04
    ld [$c123], a
    call Call_000_34a9
    call Call_000_3667

Call_000_3924:
    call Call_000_34f7
    call Call_000_36d2
    ld a, $03
    call Call_000_026b
    ld b, $10
    jp Jump_000_02b2


jr_000_3934:
    xor a
    ld [$c1fb], a
    ret


jr_000_3939:
    call Call_000_3667
    call Call_000_34a9

Call_000_393f:
Jump_000_393f:
    call Call_000_34f7
    ld a, $04
    ld [$c123], a
    call $42d3
    ld a, $03
    jp Jump_000_026b


jr_000_394f:
    call Call_000_3667
    call Call_000_34f7
    ld a, $04
    ld [$c123], a
    ld a, $03
    jp Jump_000_026b


jr_000_395f:
    call Call_000_3667
    call Call_000_34f7
    call Call_000_35ed
    ld a, $0e
    ld [$c123], a
    ld a, $03
    call Call_000_026b
    ld b, $20
    jp Jump_000_02b2


Call_000_3977:
    ld a, [$c100]
    and $01
    ret z

    jp Jump_000_3f92


Call_000_3980:
    ld a, [$c100]
    and $01
    jp z, Jump_000_3a5b

    ld a, [$c1af]
    or a
    ret nz

    ld a, $ff
    ld [$c1af], a
    ld a, [$c123]
    cp $80
    jr z, jr_000_39c3

    cp $81
    jp z, Jump_000_3a07

    cp $82
    jp z, Jump_000_3a40

    cp $0c
    jp z, Jump_000_3a60

    cp $0e
    ret nz

    cp $84
    jp z, Jump_000_3a3f

    call Call_000_34f7
    call Call_000_34a9
    call Call_000_351d
    ld a, $12
    ld [$c123], a
    ld a, $02
    jp Jump_000_026b


jr_000_39c3:
    ld a, [$c1f3]

Call_000_39c6:
    sub $04
    ld e, a
    ld d, $00

Jump_000_39cb:
    ld hl, $c1e7
    add hl, de
    ld a, [hl]
    cp $1f
    jr z, jr_000_39df

    cp $19
    jr z, jr_000_39df

    cp $37
    jr z, jr_000_39df

    jp $4d7d


jr_000_39df:
    ld c, a
    ld a, [$c1ef]
    cp c
    jr nz, jr_000_39e8

    ld c, $00

jr_000_39e8:
    ld a, c
    ld [$c1ef], a
    ld a, $02
    call Call_000_026b
    ld a, $04
    ld [$c123], a
    call Call_000_34a9
    call Call_000_3667
    call Call_000_34f7

Jump_000_39ff:
    call Call_000_08c0
    ld b, $10
    jp Jump_000_02b2


Call_000_3a07:
Jump_000_3a07:
    call Call_000_34a9
    call Call_000_34f7
    call Call_000_08ce
    call Call_000_36d2
    ld a, $02
    call Call_000_026b
    ld a, $84
    ld [$c123], a
    ld a, [$c1f3]
    sub $04
    ld e, a
    ld d, $00
    ld hl, $c1e7
    add hl, de
    ld a, [hl]

Call_000_3a2a:
    cp $12
    jr z, jr_000_3a37

    cp $0c
    jr z, jr_000_3a3b

jr_000_3a32:
    ld b, $08
    jp Jump_000_02b2


jr_000_3a37:
    ld [hl], $04
    jr jr_000_3a32

jr_000_3a3b:
    ld [hl], $0a
    jr jr_000_3a32

Call_000_3a3f:
Jump_000_3a3f:
    ret


Jump_000_3a40:
    call Call_000_34a9
    call Call_000_3667
    call Call_000_34f7
    ld a, $02
    call Call_000_026b
    ld a, [$c1f3]
    add $e0
    ld [$c123], a
    ld b, $08
    jp Jump_000_02b2


Jump_000_3a5b:
    xor a
    ld [$c1af], a
    ret


Jump_000_3a60:
    ld a, [$c1d4]
    ld c, a
    add a
    add a

Call_000_3a66:
    ld b, a
    add a
    add b
    add c
    ld c, a
    ld b, $00
    ld hl, $c186
    add hl, bc
    ld a, [$c1ae]
    ld c, a

Jump_000_3a75:
    ld b, $00
    add hl, bc
    ld a, [hl]
    or a
    ret z

    call $6e35
    xor a

Jump_000_3a7f:
    call Call_000_3728
    ld a, $01
    ld [$c105], a
    ld a, $0c
    ld hl, $4dc4
    call Call_000_353c
    jp Jump_000_35bf


Call_000_3a92:
    ld a, [$c100]
    and $01
    jp z, Jump_000_3b3c

    ld a, [$c1af]
    or a
    ret nz

    ld a, $ff
    ld [$c1af], a
    ld a, [$c105]
    or a
    ret nz

    ld a, [$c123]
    cp $04
    jr nc, jr_000_3b05

    cp $03
    jr nz, jr_000_3abe

    ld a, $5c
    ld [$c105], a
    ld a, $02
    jp Jump_000_026b


jr_000_3abe:
    cp $02

Jump_000_3ac0:
    jr nz, jr_000_3ad6

    ld a, [$c126]

Call_000_3ac5:
Jump_000_3ac5:
    or a
    jp z, Jump_000_3b37

    call Call_000_35bf
    ld a, $0c
    ld [$c123], a
    ld a, $02
    jp Jump_000_026b


jr_000_3ad6:
    cp $01
    jr nz, jr_000_3aea

    ld a, [$c125]
    or a
    jr z, jr_000_3b37

    ld a, $0d
    ld [$c123], a
    ld a, $02
    jp Jump_000_026b


jr_000_3aea:
    ld a, [$c124]
    or a
    jr z, jr_000_3b37

    call Call_000_3667
    call Call_000_35ed
    ld a, $0e
    ld [$c123], a
    ld a, $02
    call Call_000_026b

Jump_000_3b00:
    ld b, $20
    jp Jump_000_02b2


jr_000_3b05:
    ld a, [$c123]
    sub $04
    ld l, a
    ld h, $00
    ld de, $c1e7
    add hl, de
    ld a, [hl]
    cp $00
    jr z, jr_000_3b36

    ld [$c1f4], a
    ld a, [$c123]
    ld [$c1f3], a
    ld a, $80
    ld [$c123], a
    ld a, $00
    call Call_000_026b
    ld c, $00
    call Call_000_3c2f
    call Call_000_35d7
    ld b, $20
    jp Jump_000_02b2


jr_000_3b36:
    ret


Jump_000_3b37:
jr_000_3b37:
    ld a, $03
    jp Jump_000_026b


Call_000_3b3c:
Jump_000_3b3c:
    xor a

Call_000_3b3d:
Jump_000_3b3d:
    ld [$c1af], a
    ret


Call_000_3b41:
    ld a, [$c100]
    and $20
    ret z

    ld a, [$c123]
    and $01
    ret z

    ld a, [$c123]
    and $fe
    ld [$c123], a
    call Call_000_36d2
    ld a, $01
    jp Jump_000_026b


Call_000_3b5d:
    ld a, [$c100]
    and $10
    ret z

    ld a, [$c123]
    and $01
    ret nz

    ld a, [$c123]
    or $01
    ld [$c123], a
    call Call_000_36d2
    ld a, $01
    jp Jump_000_026b


Call_000_3b79:
    ld a, [$c100]
    and $40
    jr z, jr_000_3b9d

    ld a, [$c110]
    or a
    ret nz

    ld a, $ff
    ld [$c110], a
    ld a, [$c123]
    cp $02
    ret c

    sub $02
    ld [$c123], a
    call Call_000_36d2
    ld a, $01
    jp Jump_000_026b


jr_000_3b9d:
    xor a
    ld [$c110], a
    ret


Call_000_3ba2:
    ld a, [$c100]
    and $80
    jr z, jr_000_3bcf

    ld a, [$c111]
    or a
    ret nz

    ld a, $ff
    ld [$c111], a
    ld c, $08
    ld a, [$c11b]
    or a
    jr z, jr_000_3bbd

    ld c, $0a

jr_000_3bbd:
    ld a, [$c123]

Call_000_3bc0:
    cp c
    ret nc

    add $02

Call_000_3bc4:
Jump_000_3bc4:
    ld [$c123], a
    call Call_000_36d2
    ld a, $01
    jp Jump_000_026b


jr_000_3bcf:
    xor a
    ld [$c111], a
    ret


Call_000_3bd4:
    ld a, [$c100]
    and $40
    jr z, jr_000_3bf8

    ld a, [$c110]
    or a
    ret nz

    ld a, $ff
    ld [$c110], a
    ld a, [$c123]
    cp $e6
    ret c

    sub $02
    ld [$c123], a

Call_000_3bf0:
    call Call_000_36d2
    ld a, $01
    jp Jump_000_026b


jr_000_3bf8:
    xor a
    ld [$c110], a
    ret


Call_000_3bfd:
    ld a, [$c100]

Call_000_3c00:
Jump_000_3c00:
    and $80
    jr z, jr_000_3c2a

    ld a, [$c111]
    or a

Call_000_3c08:
    ret nz

    ld a, $ff
    ld [$c111], a
    ld c, $e8
    ld a, [$c11b]
    or a
    jr z, jr_000_3c18

    ld c, $ea

jr_000_3c18:
    ld a, [$c123]
    cp c
    ret nc

    add $02
    ld [$c123], a
    call Call_000_36d2
    ld a, $01
    jp Jump_000_026b


jr_000_3c2a:
    xor a
    ld [$c111], a
    ret


Call_000_3c2f:
    ld hl, $4dba
    ld a, $fc
    jp Jump_000_0280


Call_000_3c37:
    ld a, $02
    call Call_000_02ee

Jump_000_3c3c:
    ld hl, $6440

Call_000_3c3f:
Jump_000_3c3f:
    ld de, $6692
    ld a, [$c10e]
    or a
    jr z, jr_000_3c4e

    ld hl, $6447
    ld de, $6699

jr_000_3c4e:
    ld a, l
    ld [$c108], a
    ld a, h
    ld [$c109], a
    ld a, e
    ld [$c10a], a
    ld a, d
    ld [$c10b], a
    ld a, [$c10d]

Call_000_3c61:
    sub $10
    srl a
    srl a
    srl a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $9800
    add hl, de
    ld a, [$c10c]
    sub $08
    srl a
    srl a
    srl a
    add l
    ld l, a
    ld bc, $070d
    call Call_000_3c8d
    ld a, $01
    jp Jump_000_02ee


Call_000_3c8d:
jr_000_3c8d:
    push bc
    push hl

jr_000_3c8f:
    push bc
    ld a, [$c108]
    ld e, a
    ld a, [$c109]
    ld d, a
    ld a, [$c10a]
    ld c, a
    ld a, [$c10b]
    ld b, a
    call Call_000_328a
    ld a, [de]
    add $80
    ld [hl], a
    ld a, $01
    ldh [rVBK], a
    ld a, [bc]
    ld [hl], a
    xor a
    ldh [rVBK], a
    inc de
    ld a, e
    ld [$c108], a
    ld a, d
    ld [$c109], a
    inc bc
    ld a, c
    ld [$c10a], a
    ld a, b
    ld [$c10b], a
    ld a, l

Call_000_3cc3:
Jump_000_3cc3:
    add $20
    ld l, a

Call_000_3cc6:
    ld a, h
    adc $00
    ld h, a
    cp $9c
    jr c, jr_000_3cd0

    ld h, $98

jr_000_3cd0:
    pop bc
    dec b
    jr nz, jr_000_3c8f

    ld a, [$c108]
    add $0b
    ld [$c108], a

Call_000_3cdc:
    ld a, [$c109]

Call_000_3cdf:
    adc $00
    ld [$c109], a
    ld a, [$c10a]

Jump_000_3ce7:
    add $0b
    ld [$c10a], a
    ld a, [$c10b]
    adc $00
    ld [$c10b], a
    pop hl
    ld a, l
    and $e0
    ld c, a
    ld a, l
    inc a

Call_000_3cfb:
Jump_000_3cfb:
    and $1f
    or c

Jump_000_3cfe:
    ld l, a

Call_000_3cff:
Jump_000_3cff:
    pop bc

Call_000_3d00:
Jump_000_3d00:
    dec c
    jr nz, jr_000_3c8d

Call_000_3d03:
    ret


Jump_000_3d04:
jr_000_3d04:
    push bc
    push de

jr_000_3d06:
    ld a, e
    cp $a8
    jr nc, jr_000_3d1d

    ld a, d
    cp $90
    jr nc, jr_000_3d1d

    ld [hl+], a
    ld [hl], e
    inc l
    ld a, [$c108]
    ld [hl], a
    inc l
    ld a, [$c109]
    ld [hl], a
    inc l

jr_000_3d1d:
    ld a, [$c108]
    add $02
    ld [$c108], a
    ld a, d
    add $10
    ld d, a
    dec c
    jr nz, jr_000_3d06

    pop de
    ld a, e
    add $08
    ld e, a

Jump_000_3d31:
    pop bc
    dec b
    jr nz, jr_000_3d04

    ret


Jump_000_3d36:
    push bc
    ld a, [$c1c0]
    ld c, a
    ld a, d

Jump_000_3d3c:
    sub c
    ld d, a

Call_000_3d3e:
    pop bc
    ld a, [$c109]
    and $20
    jr z, jr_000_3d04

    ld a, b
    dec a
    add a
    add a
    add a
    dec a
    add e
    ld e, a

jr_000_3d4e:
    push bc
    push de

jr_000_3d50:
    ld a, e
    cp $a8
    jr nc, jr_000_3d66

    ld a, d
    cp $90
    jr nc, jr_000_3d66

    ld [hl+], a
    ld [hl], e
    inc l
    ld a, [$c108]
    ld [hl+], a
    ld a, [$c109]
    ld [hl], a
    inc l

jr_000_3d66:
    ld a, [$c108]
    add $02
    ld [$c108], a
    ld a, d
    add $10
    ld d, a
    dec c
    jr nz, jr_000_3d50

    pop de
    ld a, e
    sub $08
    ld e, a
    pop bc
    dec b
    jr nz, jr_000_3d4e

    ret


Call_000_3d7f:
jr_000_3d7f:
    dec bc
    ld a, b
    or c
    jr nz, jr_000_3d7f

    ret


Call_000_3d85:
    push af
    ld a, [$c120]
    or a
    jr nz, jr_000_3d8d

    inc h

jr_000_3d8d:
    pop af
    ret


Call_000_3d8f:
    call Call_000_02ee
    xor a
    ld [$c1fd], a
    ld a, $08
    jr jr_000_3de3

Call_000_3d9a:
    call Call_000_02ee
    ld a, $ff
    jr jr_000_3dde

Call_000_3da1:
    ld a, $fa
    call Call_000_02ee
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, $01
    call Call_000_02ee
    ld hl, $0f00
    ld a, $fa
    jr jr_000_3dda

Call_000_3db5:
Jump_000_3db5:
    ld a, $fa
    call Call_000_02ee
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, [hl]
    ld l, e
    ld h, d
    jr jr_000_3dda

Jump_000_3dc3:
    ld a, $fa
    call Call_000_02ee
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, [hl]
    ld l, e

Call_000_3dce:
    ld h, d

Call_000_3dcf:
    call Call_000_02ee
    xor a
    ld [$c1fd], a
    ld a, $08
    jr jr_000_3de3

Call_000_3dda:
Jump_000_3dda:
jr_000_3dda:
    call Call_000_02ee
    xor a

jr_000_3dde:
    ld [$c1fd], a
    ld a, $09

jr_000_3de3:
    ld [$c108], a
    ld a, l
    ld [$c1f6], a
    ld a, h
    ld [$c1f7], a
    call Call_000_3ea3

Jump_000_3df1:
jr_000_3df1:
    ld a, [bc]
    cp $01
    jp z, Jump_000_3e54

    cp $00
    jp z, Jump_000_3e65

    cp $02
    jp z, Jump_000_3e82

    cp $03
    jp z, Jump_000_3e74

    cp $04
    jp z, Jump_000_3e7b

    sub $20
    cp $28
    jr c, jr_000_3e29

    cp $50
    jr c, jr_000_3e1f

    sub $50
    ld e, a
    add a
    add e
    add $82
    ld d, a
    jr jr_000_3e2f

jr_000_3e1f:
    sub $28
    ld e, a
    add a
    add e
    add $81
    ld d, a

Call_000_3e27:
    jr jr_000_3e2f

jr_000_3e29:
    ld e, a
    add a
    add e
    add $80
    ld d, a

jr_000_3e2f:
    call Call_000_328a

Call_000_3e32:
    ld [hl], d
    ld a, $01
    ldh [rVBK], a
    ld a, [$c108]
    ld [hl], a
    xor a

Jump_000_3e3c:
    ldh [rVBK], a

Call_000_3e3e:
    ld a, [$c1fd]
    or a
    jr z, jr_000_3e50

    push bc
    ld b, $03

jr_000_3e47:
    push bc
    call Call_000_3ed2
    pop bc
    dec b
    jr nz, jr_000_3e47

    pop bc

jr_000_3e50:
    inc bc
    inc hl
    jr jr_000_3df1

Jump_000_3e54:
    ld a, [$c1f7]
    ld [$c1f9], a
    ld a, l
    and $1f
    ld [$c1f8], a
    ld a, $01
    jp Jump_000_02ee


Jump_000_3e65:
    ld hl, $c1f7
    inc [hl]
    xor a
    ld [$c1f6], a

jr_000_3e6d:
    inc bc
    call Call_000_3ea3
    jp Jump_000_3df1


Jump_000_3e74:
    ld a, $ff
    ld [$c1fd], a
    jr jr_000_3e6d

Jump_000_3e7b:
    push bc
    call Call_000_37db
    pop bc

Jump_000_3e80:
    jr jr_000_3e6d

Jump_000_3e82:
    call Call_000_0c2e
    xor a
    ld [$c1f6], a
    ld [$c1f7], a
    push bc
    push hl
    ld hl, $9800
    ld bc, $0400

jr_000_3e94:
    call Call_000_328a
    ld [hl], $80
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_000_3e94

    pop hl
    pop bc
    jr jr_000_3e6d

Call_000_3ea3:
    ld a, [$c1f7]
    add a
    add a
    add a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld a, h
    add $98
    ld h, a
    ld a, [$c1f6]
    add l
    ld l, a
    ret


Call_000_3eb8:
    push bc
    ld de, $c320
    ld b, $07

jr_000_3ebe:
    ld a, [de]

Jump_000_3ebf:
    and $80

Jump_000_3ec1:
    jr z, jr_000_3ed0

    ld a, e

Call_000_3ec4:
    add $20
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b

Call_000_3ecc:
    jr nz, jr_000_3ebe

    pop bc
    ret


jr_000_3ed0:
    pop bc
    ret


Call_000_3ed2:
    ld a, $ff
    ld [$c103], a

jr_000_3ed7:
    halt
    ld a, [$c103]
    or a
    jr nz, jr_000_3ed7

    ret


Call_000_3ee0:
    ld a, $0d
    call Call_000_02ee
    ld a, [$c10e]
    add a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $9893
    add hl, de
    ld b, $14

jr_000_3ef7:
    push bc
    push hl
    ld a, b
    dec a
    ld l, a
    ld h, $00
    add hl, hl

Call_000_3eff:
Jump_000_3eff:
    push hl

Call_000_3f00:
Jump_000_3f00:
    add hl, hl

Call_000_3f01:
Jump_000_3f01:
    add hl, hl
    add hl, hl

Jump_000_3f03:
    pop de
    add hl, de
    push hl
    ld de, $6930
    ld a, [$c10e]
    add a
    add $04
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    add hl, de
    ld a, [hl]
    add $80
    ld b, a
    ld de, $6abc
    ld a, [$c10e]

Jump_000_3f20:
    add a
    add $04

Call_000_3f23:
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    pop hl
    add hl, de
    ld c, [hl]
    pop hl
    call Call_000_328a

Jump_000_3f30:
    ld [hl], b
    ld a, $01
    ldh [rVBK], a
    ld [hl], c
    xor a

Jump_000_3f37:
    ldh [rVBK], a
    dec hl
    pop bc

Jump_000_3f3b:
    dec b

Call_000_3f3c:
Jump_000_3f3c:
    jr nz, jr_000_3ef7

Call_000_3f3e:
    ld a, $01
    jp Jump_000_02ee


Call_000_3f43:
    ld b, $03

jr_000_3f45:
    push bc
    ld a, [$c185]
    add b
    sub $02
    and $1f
    ld e, a
    ld d, $00
    ld hl, $c280
    add hl, de
    ld a, [hl]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $4597
    add hl, de
    ld a, $fa
    call Call_000_02ee
    ld e, [hl]
    inc hl

Call_000_3f67:
    ld d, [hl]
    ld a, $01
    call Call_000_02ee
    ld h, b
    dec h
    ld l, $00
    ld a, b
    cp $02
    jr nz, jr_000_3f86

    ld a, [$c123]
    cp $0c
    jr c, jr_000_3f86

    ld c, e
    ld b, d
    ld a, $fa

Jump_000_3f81:
    call Call_000_3d8f
    jr jr_000_3f8d

jr_000_3f86:
    ld c, e
    ld b, d
    ld a, $fa
    call Call_000_3dda

Call_000_3f8d:
Jump_000_3f8d:
jr_000_3f8d:
    pop bc
    dec b
    jr nz, jr_000_3f45

Jump_000_3f91:
    ret


Jump_000_3f92:
    ld a, [$c1f3]
    sub $04
    ld e, a
    ld d, $00
    ld hl, $c1e7
    add hl, de
    push hl
    ld a, [$c123]
    sub $e4
    ld e, a
    ld d, $00
    ld hl, $c1e7
    add hl, de
    pop de
    ld a, [de]
    cp $05
    jp z, Jump_000_3fd1

    cp $10
    jp z, Jump_000_3fda

    cp $16
    jp z, Jump_000_3fe8

Call_000_3fbc:
    cp $21
    jp z, Jump_000_3ff6

Jump_000_3fc1:
    cp $57

Jump_000_3fc3:
    jp z, $4004

    cp $58
    jp z, $400d

    cp $59
    jp z, $4016

    ret


Jump_000_3fd1:
    ld a, [hl]
    cp $10
    jp z, $401f

    jp $405a


Jump_000_3fda:
    ld a, [hl]
    cp $05

Call_000_3fdd:
    jp z, $401f

    cp $21
    jp z, $4027

Jump_000_3fe5:
    jp $405a


Jump_000_3fe8:
    ld a, [hl]
    cp $21
    jp z, $402f

    cp $59
    jp z, $403f

Call_000_3ff3:
    jp $405a


Jump_000_3ff6:
    ld a, [hl]

Call_000_3ff7:
    cp $16
    jp z, $402f

Jump_000_3ffc:
    cp $10

Call_000_3ffe:
    db $ca

Call_000_3fff:
Jump_000_3fff:
    daa
