
%SPCDataBlockStart(!ARAM_EngineLoc)
SPC700_Engine:
	CLRP
	MOV X, #$CF
	MOV SP, X
	MOV A, #$00
	MOV $0110, A
	MOV $0111, A
	MOV $0112, A
	MOV $0113, A
	MOV X, A
CODE_0813:
	MOV (x+), A
	CMP X, #$E0
	BNE CODE_0813
	INC A
	MOV $28, A
	MOV A, #$00
	MOV Y, #$0C
	CALL CODE_0B8B
	MOV Y, #$1C
	CALL CODE_0B8B
	MOV Y, #$2C
	CALL CODE_0B8B
	MOV Y, #$3C
	CALL CODE_0B8B
	CALL CODE_14F3
	SET5 $48
	MOV A, #$60
	MOV Y, #$0C
	CALL CODE_0B8B
	MOV Y, #$1C
	CALL CODE_0B8B
	MOV A, #$1C
	MOV Y, #$5D
	CALL CODE_0B8B
	MOV A, #$F0
	MOV $00F1, A
	MOV $28, A
	MOV A, #$10
	MOV $00FA, A
	MOV $53, A
	MOV A, #$01
	MOV $00F1, A
CODE_085C:
	MOV A, $1B
	BEQ CODE_0863
	JMP CODE_0902

CODE_0863:
	MOV Y, #$0A
CODE_0865:
	CMP Y, #$05
	BEQ CODE_0870
	BCS CODE_0873
	CMP $4C, $4D
	BNE CODE_0881
CODE_0870:
	BBS7 $4C, CODE_0881
CODE_0873:
	MOV A, DATA_18CB+y
	MOV $00F2, A
	MOV A, DATA_18D5+y
	MOV X, A
	MOV A, (x)
	MOV $00F3, A
CODE_0881:
	DBNZ Y, CODE_0865
	MOV $45, Y
	MOV $46, Y
	MOV A, $18
	EOR A, $19
	LSR A
	LSR A
	NOTC
	ROR $18
	ROR $19
CODE_0892:
	MOV Y, $00FD
	BEQ CODE_0892
	PUSH Y
	MOV A, #$20
	MUL YA
	CLRC
	ADC A, $43
	MOV $43, A
	BCC CODE_08F7
	MOV A, $6F
	CMP A, #$01
	BEQ CODE_08F0
	CMP A, #$02
	BEQ CODE_08D8
	MOV A, #$00
	MOV $25, A
	MOV A, #$01
	MOV $23, A
	MOV CODE_126E, A
	MOV A, #$0A
	MOV CODE_126E+$01, A
	MOV A, #$20
	MOV CODE_126E+$02, A
	CALL CODE_1197
	MOV A, #$01
	MOV $25, A
	MOV CODE_126E, A
	MOV A, #$0C
	MOV CODE_126E+$01, A
	MOV A, #$40
	MOV CODE_126E+$02, A
	CALL CODE_1197
CODE_08D8:
	MOV A, #$01
	MOV $23, A
	MOV CODE_126E, A
	MOV A, #$02
	MOV $25, A
	MOV A, #$0E
	MOV CODE_126E+$01, A
	MOV A, #$80
	MOV CODE_126E+$02, A
	CALL CODE_1197
CODE_08F0:
	CMP $4C, $4D
	BEQ CODE_08F7
	INC $4C
CODE_08F7:
	MOV A, $53
	POP Y
	MUL YA
	CLRC
	ADC A, $51
	MOV $51, A
	BCC CODE_097F
CODE_0902:
	MOV A, #$00
	MOV $23, A
	CALL CODE_10DE
	MOV A, $6F
	CMP A, #$01
	BEQ CODE_0969
	CMP A, #$02
	BEQ CODE_094B
	MOV A, #$01
	MOV $23, A
	MOV X, #$01
	CALL CODE_0998
	CALL CODE_0E14
	MOV X, #$01
	CALL CODE_0CE5
	INC $0119
	MOV A, $0115
	BEQ CODE_0931
	MOV X, #$0A
	CALL CODE_0BCE
CODE_0931:
	MOV X, #$02
	CALL CODE_0998
	CALL CODE_0EC4
	MOV X, #$02
	CALL CODE_0CE5
	INC $011A
	MOV A, $0116
	BEQ CODE_094B
	MOV X, #$0C
	CALL CODE_0BCE
CODE_094B:
	MOV A, #$01
	MOV $23, A
	MOV X, #$03
	CALL CODE_0998
	CALL CODE_0F71
	MOV X, #$03
	CALL CODE_0CE5
	INC $011B
	MOV A, $0117
	BEQ CODE_0969
	MOV X, #$0E
	CALL CODE_0BCE
CODE_0969:
	INC $20
	MOV A, $21
	BEQ CODE_0972
	CALL CODE_0B92
CODE_0972:
	MOV X, #$00
	CALL CODE_0998
	MOV X, #$00
	CALL CODE_0CE5
	JMP CODE_085C

CODE_097F:
	MOV A, $04
	BEQ CODE_0995
	MOV X, #$00
	MOV $47, #$01
CODE_0988:
	MOV A, $31+x
	BEQ CODE_098F
	CALL CODE_17F4
CODE_098F:
	INC X
	INC X
	ASL $47
	BNE CODE_0988
CODE_0995:
	JMP CODE_085C

;--------------------------------------------------------------------

CODE_0998:
	MOV A, $00F4+x
	CMP A, $00F4+x
	BNE CODE_0998
	MOV $00F4+x, A
	MOV Y, A
	ASL A
	BCC CODE_09AA
	JMP CODE_0A5D

CODE_09AA:
	LSR A
	CMP X, #$00
	BEQ CODE_09B3
	CMP A, #$70
	BPL CODE_09D1
CODE_09B3:
	MOV A, Y
	MOV $00+x, A
	MOV A, #$00
	MOV $6B+x, A
	MOV $1C+x, A
	CMP X, #$00
	BNE CODE_09C5
	MOV $21, A
	MOV $22, A
CODE_09C4:
	RET

CODE_09C5:
	MOV A, #$00
	MOV $0114+x, A
	MOV $0118+x, A
	MOV $011C+x, A
	RET

CODE_09D1:
	CMP X, #$01
	BEQ CODE_0A31
	CMP X, #$02
	BEQ CODE_0A05
	MOV X, $0117
	BNE CODE_0A04
	AND A, #$0F
	MOV X, A
	ASL A
	ASL A
	ASL A
	ASL A
	MOV $9E, A
	MOV A, #$01
	MOV $0117, A
	MOV A, #$00
	SETC
	SBC A, $030F
	MOV X, $009E
	CALL CODE_15A0
	MOV $031E, A
	MOV A, Y
	MOV $031F, A
	MOV A, #$00
	MOV $032E, A
CODE_0A04:
	RET

CODE_0A05:
	MOV X, $0116
	BNE CODE_0A30
	AND A, #$0F
	MOV X, A
	ASL A
	ASL A
	ASL A
	ASL A
	MOV $9C, A
	MOV A, #$01
	MOV $0116, A
	MOV A, #$00
	SETC
	SBC A, $030D
	MOV X, $009C
	CALL CODE_15A0
	MOV $031C, A
	MOV A, Y
	MOV $031D, A
	MOV A, #$00
	MOV $032C, A
CODE_0A30:
	RET

CODE_0A31:
	MOV X, $0115
	BNE CODE_0A5C
	AND A, #$0F
	MOV X, A
	ASL A
	ASL A
	ASL A
	ASL A
	MOV $9A, A
	MOV A, #$01
	MOV $0115, A
	MOV A, #$00
	SETC
	SBC A, $030B
	MOV X, $009A
	CALL CODE_15A0
	MOV $031A, A
	MOV A, Y
	MOV $031B, A
	MOV A, #$00
	MOV $032A, A
CODE_0A5C:
	RET

CODE_0A5D:
	CMP X, #$00
	BNE CODE_0A78
	MOV A, Y
	CMP A, #$FF
	BEQ CODE_0A74
	CMP A, #$FE
	BEQ CODE_0A74
	CMP A, #$F0
	BEQ CODE_0A74
	CMP A, #$F1
	BEQ CODE_0A74
	BRA CODE_0A77
CODE_0A74:
	JMP CODE_09B3

CODE_0A77:
	ASL A
CODE_0A78:
	LSR A
	MOV $1C+x, A
	MOV A, $04+x
	BEQ CODE_0A82
	JMP CODE_09C4

CODE_0A82:
	MOV A, $0110+x
	MOV $00+x, A
	RET

;--------------------------------------------------------------------

CODE_0A88:
	MOV A, $00F4+x
	CMP A, $00F4+x
	BNE CODE_0A88
	MOV $00F4+x, A
	MOV $00+x, A
CODE_0A95:
	RET

;--------------------------------------------------------------------

CODE_0A96:
	CMP Y, #$CA
	BCC CODE_0A9F
	CALL CODE_1319
	MOV Y, #$A4
CODE_0A9F:
	CMP Y, #$C8
	BCS CODE_0A95
	MOV A, $1A
	AND A, $47
	BNE CODE_0A95
	MOV A, Y
	AND A, #$7F
	CLRC
	ADC A, $50
	CLRC
	ADC A, $02F0+x
	MOV $0361+x, A
	MOV A, $0381+x
	MOV $0360+x, A
	MOV A, $02B1+x
	LSR A
	MOV A, #$00
	ROR A
	MOV $02A0+x, A
	MOV A, #$00
	MOV $B0+x, A
	MOV $0100+x, A
	MOV $02D0+x, A
	MOV $C0+x, A
	OR $5E, $47
	OR $45, $47
	MOV A, $0280+x
	MOV $A0+x, A
	BEQ CODE_0AFD
	MOV A, $0281+x
	MOV $A1+x, A
	MOV A, $0290+x
	BNE CODE_0AF3
	MOV A, $0361+x
	SETC
	SBC A, $0291+x
	MOV $0361+x, A
CODE_0AF3:
	MOV A, $0291+x
	CLRC
	ADC A, $0361+x
	CALL CODE_157D
CODE_0AFD:
	CALL CODE_1595
CODE_0B00:
	MOV Y, #$00
	MOV A, $11
	SETC
	SBC A, #$34
	BCS CODE_0B12
	MOV A, $11
	SETC
	SBC A, #$13
	BCS CODE_0B16
	DEC Y
	ASL A
CODE_0B12:
	ADDW YA, $10
	MOVW $10, YA
CODE_0B16:
	PUSH X
	MOV A, $11
	ASL A
	MOV Y, #$00
	MOV X, #$18
	DIV YA, X
	MOV X, A
	MOV A, DATA_18E0+$01+y
	MOV $15, A
	MOV A, DATA_18E0+y
	MOV $14, A
	MOV A, DATA_18E0+$03+y
	PUSH A
	MOV A, DATA_18E0+$02+y
	POP Y
	SUBW YA, $14
	MOV Y, $10
	MUL YA
	MOV A, Y
	MOV Y, #$00
	ADDW YA, $14
	MOV $15, Y
	ASL A
	ROL $15
	MOV $14, A
	BRA CODE_0B49

CODE_0B45:
	LSR $15
	ROR A
	INC X
CODE_0B49:
	CMP X, #$06
	BNE CODE_0B45
	MOV $14, A
	POP X
	MOV A, $0220+x
	MOV Y, $15
	MUL YA
	MOVW $16, YA
	MOV A, $0220+x
	MOV Y, $14
	MUL YA
	PUSH Y
	MOV A, $0221+x
	MOV Y, $14
	MUL YA
	ADDW YA, $16
	MOVW $16, YA
	MOV A, $0221+x
	MOV Y, $15
	MUL YA
	MOV Y, A
	POP A
	ADDW YA, $16
	MOVW $16, YA
	MOV A, X
	XCN A
	LSR A
	OR A, #$02
	MOV Y, A
	MOV A, $16
	CALL CODE_0B83
	INC Y
	MOV A, $17
CODE_0B83:
	PUSH A
	MOV A, $47
	AND A, $1A
	POP A
	BNE CODE_0B91
CODE_0B8B:
	MOV $00F2, Y
	MOV $00F3, A
CODE_0B91:
	RET

;--------------------------------------------------------------------

CODE_0B92:
	AND $20, #$01
	BNE CODE_0BCD
	CMP A, #$13
	BEQ CODE_0BA4
	MOV A, $22
	SETC
	SBC A, $21
	BCS CODE_0BC9
	BRA CODE_0BAC

CODE_0BA4:
	MOV A, $22
	DEC A
	DEC A
	CMP A, #$30
	BCS CODE_0BC9
CODE_0BAC:
	CALL CODE_1486
	MOV A, #$00
	MOV $21, A
	MOV X, #$11
	MOV $00F1, X
	MOV X, #$0A
	CALL CODE_1A1A
	MOV X, #$0C
	CALL CODE_1A1A
	MOV X, #$0E
	CALL CODE_1A1A
	MOV A, #$00
CODE_0BC9:
	MOV $22, A
	MOV $59, A
CODE_0BCD:
	RET

;--------------------------------------------------------------------

CODE_0BCE:
	MOV A, $0090+x
	BNE CODE_0BCD
	MOV A, X
	SETC
	SBC A, #$08
	LSR A
	MOV X, A
	MOV A, #$00
	MOV $0114+x, A
	MOV $00+x, A
	MOV $08+x, A
	MOV $04+x, A
	MOV $0110+x, A
	MOV $6B+x, A
	MOV A, X
	CLRC
	ADC A, #$04
	ASL A
	MOV X, A
	MOV A, #$00
	MOV $30+x, A
	MOV $31+x, A
	CMP X, #$0A
	BEQ CODE_0C0B
	CMP X, #$0C
	BEQ CODE_0C04
	CALL CODE_0FB8
	MOV A, #$80
	BRA CODE_0C10

CODE_0C04:
	CALL CODE_0F0B
	MOV A, #$40
	BRA CODE_0C10

CODE_0C0B:
	CALL CODE_0E5B
	MOV A, #$20
CODE_0C10:
	MOV $47, A
	CALL CODE_1A1A
	RET

;--------------------------------------------------------------------

CODE_0C16:
	MOV $0301+x, A
	MOV A, $0301+x
	BEQ CODE_0C2A
	CMP A, $0311+x
	BCC CODE_0C2B
	SETC
	SBC A, $0311+x
	MOV $0301+x, A
CODE_0C2A:
	RET

CODE_0C2B:
	MOV A, #$00
	MOV $0301+x, A
	RET

;--------------------------------------------------------------------

CODE_0C31:
	MOV A, DATA_0CB2
	MOV $15BE, A
	MOV A, DATA_0CB2+$01
	MOV $15BF, A
	MOV A, DATA_0CB2+$02
	MOV $15C0, A
	MOV A, DATA_0CB2+$03
	MOV $15C1, A
	MOV A, #$0A
	MOV $0331, A
	MOV $0333, A
	MOV $0335, A
	MOV $0337, A
	MOV $0339, A
	MOV $033B, A
	MOV $033D, A
	MOV $033F, A
	MOV A, #$00
	MOV $0330, A
	MOV $0332, A
	MOV $0334, A
	MOV $0336, A
	MOV $0338, A
	MOV $033A, A
	MOV $033C, A
	MOV $033E, A
	RET

;--------------------------------------------------------------------

CODE_0C7E:
	MOV A, $0CB6
	MOV $15BE, A
	MOV A, $0CB7
	MOV $15BF, A
	MOV A, $0CB8
	MOV $15C0, A
	MOV A, $0CB9
	MOV $15C1, A
	RET

;--------------------------------------------------------------------

CODE_0C97:
	MOV A, #$00
	MOV $6F, A
	BRA CODE_0CA7

CODE_0C9D:
	MOV A, #$02
	MOV $6F, A
	BRA CODE_0CA7

CODE_0CA3:
	MOV A, #$01
	MOV $6F, A
CODE_0CA7:
	MOV A, $1A
	EOR A, #$FF
	TSET $0046, A
	CALL CODE_1A60
	RET

;--------------------------------------------------------------------

DATA_0CB2:
	dw $13F5,$13F2
	dw $1372,$1380

;--------------------------------------------------------------------

CODE_0CBA:
	MOV A, $6F
	BNE CODE_0CE1
	BRA CODE_0CCE

CODE_0CC0:
	MOV A, $6F
	CMP A, #$02
	BNE CODE_0CE1
	BRA CODE_0CCE

CODE_0CC8:
	MOV A, $6F
	CMP A, #$01
	BNE CODE_0CE1
CODE_0CCE:
	MOV A, #$00
	MOV Y, A
	MOV X, #$00
	CALL CODE_1486
	MOV A, #$00
	MOV $00, A
	MOV $08, A
	MOV $04, A
	CALL CODE_1041
CODE_0CE1:
	RET

;--------------------------------------------------------------------

CODE_0CE2:
	JMP CODE_0E0B

CODE_0CE5:
	MOV A, $1C+x
	BEQ CODE_0CE2
	CMP A, $6B+x
	BEQ CODE_0CE2
	MOV $6B+x, A
	CMP X, #$00
	BNE CODE_0D2E
	CMP A, #$01
	BNE CODE_0CFA
	JMP CODE_0C31

CODE_0CFA:
	CMP A, #$02
	BEQ CODE_0C7E
	CMP A, #$03
	BEQ CODE_0CA3
	CMP A, #$04
	BEQ CODE_0C97
	CMP A, #$05
	BEQ CODE_0C9D
	CMP A, #$10
	BEQ CODE_0CBA
	CMP A, #$11
	BEQ CODE_0CC0
	CMP A, #$12
	BEQ CODE_0CC8
	CMP A, #$13
	BCC CODE_0D23
	CMP A, #$20
	BCS CODE_0D23
	SETC
	SBC A, #$12
	BRA CODE_0D25

CODE_0D23:
	MOV A, #$13
CODE_0D25:
	MOV $21, A
	MOV A, $59
	MOV $22, A
	JMP CODE_0E0B

CODE_0D2E:
	CLRC
	ADC A, #$01
	MOV Y, A
	CMP X, #$02
	BEQ CODE_0D83
	CMP X, #$03
	BNE CODE_0D3D
	JMP CODE_0DC8

CODE_0D3D:
	MOV X, #$0A
	MOV A, X
	XCN A
	LSR A
	OR A, #$03
	MOV Y, A
	MOV A, $012A
	BNE CODE_0D59
	CALL CODE_0E0C
	MOV $012A, A
	PUSH Y
	DEC Y
	CALL CODE_0E0C
	MOV $012B, A
	POP Y
CODE_0D59:
	MOV A, $012A
	MOV $11, A
	MOV A, $012B
	MOV $10, A
	PUSH Y
	MOV A, $6C
	AND A, #$F8
	LSR A
	LSR A
	LSR A
	MOV Y, A
	MOV A, $6C
	AND A, #$07
	XCN A
	ASL A
	CLRC
	ADDW YA, $10
	MOV X, A
	MOV A, Y
	POP Y
	CALL CODE_0B8B
	DEC Y
	MOV A, X
	CALL CODE_0B8B
	JMP CODE_0E0B

CODE_0D83:
	MOV X, #$0C
	MOV A, X
	XCN A
	LSR A
	OR A, #$03
	MOV Y, A
	MOV A, $012C
	BNE CODE_0D9F
	CALL CODE_0E0C
	MOV $012C, A
	PUSH Y
	DEC Y
	CALL CODE_0E0C
	MOV $012D, A
	POP Y
CODE_0D9F:
	MOV A, $012C
	MOV $11, A
	MOV A, $012D
	MOV $10, A
	PUSH Y
	MOV A, $6D
	AND A, #$F8
	LSR A
	LSR A
	LSR A
	MOV Y, A
	MOV A, $6D
	AND A, #$07
	XCN A
	ASL A
	CLRC
	ADDW YA, $10
	MOV X, A
	MOV A, Y
	POP Y
	CALL CODE_0B8B
	DEC Y
	MOV A, X
	CALL CODE_0B8B
	BRA CODE_0E0B

CODE_0DC8:
	MOV X, #$0E
	MOV A, X
	XCN A
	LSR A
	OR A, #$03
	MOV Y, A
	MOV A, $012E
	BNE CODE_0DE4
	CALL CODE_0E0C
	MOV $012E, A
	PUSH Y
	DEC Y
	CALL CODE_0E0C
	MOV $012F, A
	POP Y
CODE_0DE4:
	MOV A, $012E
	MOV $11, A
	MOV A, $012F
	MOV $10, A
	PUSH Y
	MOV A, $6E
	AND A, #$F8
	LSR A
	LSR A
	LSR A
	MOV Y, A
	MOV A, $6E
	AND A, #$07
	XCN A
	ASL A
	CLRC
	ADDW YA, $10
	MOV X, A
	MOV A, Y
	POP Y
	CALL CODE_0B8B
	DEC Y
	MOV A, X
	CALL CODE_0B8B
CODE_0E0B:
	RET

;--------------------------------------------------------------------

CODE_0E0C:
	MOV $00F2, Y
	MOV A, $00F3
	RET

;--------------------------------------------------------------------

CODE_0E13:
	NOP
CODE_0E14:
	MOV A, CODE_0E13
	BNE CODE_0E2E
	MOV X, $01
	CMP X, $05
	BEQ CODE_0E92
	CMP X, #$70
	BMI CODE_0E26
	JMP CODE_0EC0

CODE_0E26:
	MOV A, #$02
	MOV CODE_0E13, A
	JMP CODE_0EAC

CODE_0E2E:
	MOV A, $0E13
	DEC A
	MOV CODE_0E13, A
	BEQ CODE_0E38
	RET

CODE_0E38:
	MOV X, $01
	MOV $09, X
	MOV A, #$FF
	MOV $2A, A
	MOV A, X
	ASL A
	MOV X, A
	MOV A, $01
	MOV $05, A
	BEQ CODE_0E5B
	PUSH X
	MOV X, #$0A
	CALL CODE_1A1A
	POP X
	MOV A, $CF00+$01+x
	MOV $3B, A
	MOV A, $CF00+x
	MOV $3A, A
	RET

;--------------------------------------------------------------------

CODE_0E5B:
	MOV A, #$50
	MOV $00F2, A
	MOV A, #$00
	MOV $00F3, A
	MOV A, #$51
	MOV $00F2, A
	MOV A, #$00
	MOV $00F3, A
	RET

;--------------------------------------------------------------------

CODE_0E70:
	MOV X, $09
	MOV A, $D2E0+x
	BEQ CODE_0E7D
	MOV A, $D330+x
	MOV A, $D380+x
CODE_0E7D:
	MOV A, #$01
	MOV $7A, A
	MOV A, #$00
	MOV $7B, A
	MOV $AA, A
	MOV $AB, A
	MOV $BA, A
	MOV $BB, A
	MOV $02FA, A
	BRA CODE_0EAB

;--------------------------------------------------------------------

CODE_0E92:
	MOV A, X
	ASL A
	MOV X, A
	MOV A, $CFB0+x
	BEQ CODE_0EAB
	MOV A, $CF00+x
	CMP A, $3A
	BEQ CODE_0EAB
	MOV A, $CFB0+$01+x
	MOV $3B, A
	MOV A, $CFB0+x
	MOV $3A, A
CODE_0EAB:
	RET

;--------------------------------------------------------------------

CODE_0EAC:
	MOV A, #$00
	MOV $05, A
	MOV A, $1A
	EOR A, #$20
	TSET $0046, A
	MOV X, #$0A
	CALL CODE_1A1A
	RET

;--------------------------------------------------------------------

CODE_0EBF:
	MOV $05, X
	RET

;--------------------------------------------------------------------

CODE_0EC0:
	JMP CODE_1041

CODE_0EC3:
	NOP
CODE_0EC4:
	MOV A, CODE_0EC3
	BNE CODE_0EDE
	MOV X, $02
	CMP X, $06
	BEQ CODE_0F42
	CMP X, #$70
	BMI CODE_0ED6
	JMP CODE_0EC0

CODE_0ED6:
	MOV A, #$02
	MOV CODE_0EC3, A
	JMP CODE_0F5C

CODE_0EDE:
	MOV A, CODE_0EC3
	DEC A
	MOV CODE_0EC3, A
	BEQ CODE_0EE8
	RET

CODE_0EE8:
	MOV X, $02
	MOV $0A, X
	MOV A, #$FF
	MOV $2C, A
	MOV A, X
	ASL A
	MOV X, A
	MOV A, $02
	MOV $06, A
	BEQ CODE_0F0B
	PUSH X
	MOV X, #$0C
	CALL CODE_1A1A
	POP X
	MOV A, $D060+$01+x
	MOV $3D, A
	MOV A, $D060+x
	MOV $3C, A
	RET

;--------------------------------------------------------------------

CODE_0F0B:
	MOV A, #$60
	MOV $00F2, A
	MOV A, #$00
	MOV $00F3, A
	MOV A, #$61
	MOV $00F2, A
	MOV A, #$00
	MOV $00F3, A
	RET

;--------------------------------------------------------------------

CODE_0F20:
	MOV X, $0A
	MOV A, $D2E0+x
	BEQ CODE_0F2D
	MOV A, $D330+x
	MOV A, $D380+x
CODE_0F2D:
	MOV A, #$01
	MOV $7C, A
	MOV A, #$00
	MOV $7D, A
	MOV $AC, A
	MOV $AD, A
	MOV $BC, A
	MOV $BD, A
	MOV $02FC, A
	BRA CODE_0F5B

CODE_0F42:
	MOV A, X
	ASL A
	MOV X, A
	MOV A, $D140+x
	BEQ CODE_0F5B
	MOV A, $D060+x
	CMP A, $3C
	BEQ CODE_0F5B
	MOV A, $D140+$01+x
	MOV $3D, A
	MOV A, $D140+x
	MOV $3C, A
CODE_0F5B:
	RET

;--------------------------------------------------------------------

CODE_0F5C:
	MOV A, #$00
	MOV $06, A
	MOV A, $1A
	EOR A, #$40
	TSET $0046, A
	MOV X, #$0C
	CALL CODE_1A1A
	RET

;--------------------------------------------------------------------

CODE_0F6D:
	MOV $06, X
	RET

;--------------------------------------------------------------------

CODE_0F70:
	NOP
CODE_0F71:
	MOV A, CODE_0F70
	BNE CODE_0F8B
	MOV X, $03
	CMP X, $07
	BEQ CODE_0FED
	CMP X, #$70
	BMI CODE_0F83
	JMP CODE_0EC0

CODE_0F83:
	MOV A, #$02
	MOV CODE_0F70, A
	JMP CODE_1007

CODE_0F8B:
	MOV A, CODE_0F70
	DEC A
	MOV CODE_0F70, A
	BEQ CODE_0F95
	RET

CODE_0F95:
	MOV X, $03
	MOV $0B, X
	MOV A, #$FF
	MOV $2E, A
	MOV A, X
	ASL A
	MOV X, A
	MOV A, $03
	MOV $07, A
	BEQ CODE_0FB8
	PUSH X
	MOV X, #$0E
	CALL CODE_1A1A
	POP X
	MOV A, $D220+$01+x
	MOV $3F, A
	MOV A, $D220+x
	MOV $3E, A
	RET

;--------------------------------------------------------------------

CODE_0FB8:
	MOV A, #$70
	MOV $00F2, A
	MOV A, #$00
	MOV $00F3, A
	MOV A, #$71
	MOV $00F2, A
	MOV A, #$00
	MOV $00F3, A
	RET

;--------------------------------------------------------------------

CODE_0FCD:
	MOV X, $0B
	MOV A, $D2E0+x
	BEQ CODE_0FDA
	MOV A, $D330+x
	MOV A, $D380+x
CODE_0FDA:
	MOV A, #$01
	MOV $7E, A
	MOV A, #$00
	MOV $7F, A
	MOV $AE, A
	MOV $AF, A
	MOV $BE, A
	MOV $BF, A
	MOV $02FE, A
CODE_0FED:
	MOV A, X
	ASL A
	MOV X, A
	MOV A, $D280+x
	BEQ CODE_1006
	MOV A, $D220+x
	CMP A, $3E
	BEQ CODE_1006
	MOV A, $D280+$01+x
	MOV $3F, A
	MOV A, $D280+x
	MOV $3E, A
CODE_1006:
	RET

;--------------------------------------------------------------------

CODE_1007:
	MOV A, #$00
	MOV $07, A
	MOV A, $1A
	EOR A, #$80
	TSET $0046, A
	MOV X, #$0E
	CALL CODE_1A1A
	RET

;--------------------------------------------------------------------

CODE_1018:
	MOV $07, X
	RET

;--------------------------------------------------------------------

CODE_101B:
	MOV Y, #$00
	MOV A, ($40)+y
	INCw $40
	PUSH A
	MOV A, ($40)+y
	INCw $40
	MOV Y, A
	POP A
	RET

;--------------------------------------------------------------------

CODE_1029:
	CALL CODE_1905
	JMP SPC700_Engine

;--------------------------------------------------------------------

CODE_102F:
	MOV $08, A
CODE_1031:
	MOV $04, A
	ASL A
	MOV X, A
	MOV A, $D3CE+$01+x
	MOV Y, A
	MOV A, $D3CE+x
	MOVW $40, YA
	MOV $0C, #$02
CODE_1041:
	MOV A, $6F
	CMP A, #$01
	BEQ CODE_1057
	CMP A, #$02
	BEQ CODE_1051
	MOV A, $1A
	EOR A, #$1F
	BRA CODE_105B

CODE_1051:
	MOV A, $1A
	EOR A, #$7F
	BRA CODE_105B

CODE_1057:
	MOV A, $1A
	EOR A, #$FF
CODE_105B:
	TSET $0046, A
	MOV A, $00
	BNE CODE_106C
	MOV A, $23
	BNE CODE_106C
	CALL CODE_1A67
	CALL CODE_1ABF
CODE_106C:
	RET

;--------------------------------------------------------------------

CODE_106D:
	MOV A, $28
	BEQ CODE_1083
CODE_1071:
	MOV X, #$0E
	MOV $47, #$80
	MOV A, #$00
	MOV $28, A
	BRA CODE_1092

CODE_107C:
	MOV X, #$0C
	MOV $47, #$40
	BRA CODE_1092

CODE_1083:
	MOV A, $6F
	CMP A, #$01
	BEQ CODE_1071
	CMP A, #$02
	BEQ CODE_107C
	MOV X, #$08
	MOV $47, #$10
CODE_1092:
	MOV A, #$FF
	MOV $0301+x, A
	MOV A, $0047
	OR A, $29
	MOV $29, A
	MOV A, #$0A
	CALL CODE_1372
	MOV $0211+x, A
	MOV $0381+x, A
	MOV $02F0+x, A
	MOV $0280+x, A
	MOV $0400+x, A
	MOV $B1+x, A
	MOV $C1+x, A
	MOV $0120+x, A
	MOV $0121+x, A
	DEC X
	DEC X
	LSR $47
	BNE CODE_1092
	MOV $5A, A
	MOV $68, A
	MOV $54, A
	MOV $50, A
	MOV $42, A
	MOV $5F, A
	MOV $59, #$C0
	MOV $53, #$20
CODE_10D4:
	RET

;--------------------------------------------------------------------

CODE_10D5:
	JMP CODE_1041

CODE_10D8:
	JMP CODE_1031

CODE_10DB:
	JMP CODE_106D

CODE_10DE:
	MOV Y, $08
	MOV A, $00
	MOV $08, A
	CMP A, #$F0
	BEQ CODE_10D5
	CMP A, #$F1
	BEQ CODE_1108
	CMP A, #$FE
	BNE CODE_10F6
	CALL CODE_1905
	CALL CODE_1B49
CODE_10F6:
	CMP A, #$FF
	BNE CODE_10FD
	JMP CODE_1029

CODE_10FD:
	CMP A, #$70
	BCS CODE_10D5
	CMP Y, $00
	BEQ CODE_1108
	JMP CODE_1031

CODE_1108:
	MOV A, $04
	BEQ CODE_10D4
	MOV A, $0C
	BNE CODE_1113
	JMP CODE_1197

CODE_1113:
	DBNZ $0C, CODE_10DB
CODE_1116:
	CALL CODE_101B
	BNE CODE_113D
	MOV Y, A
	BEQ CODE_10D8
	CMP A, #$80
	BEQ CODE_1128
	CMP A, #$81
	BNE CODE_112C
	MOV A, #$00
CODE_1128:
	MOV $1B, A
	BRA CODE_1116

CODE_112C:
	DEC $42
	BPL CODE_1132
	MOV $42, A
CODE_1132:
	CALL CODE_101B
	MOV X, $42
	BEQ CODE_1116
	MOVW $40, YA
	BRA CODE_1116

CODE_113D:
	MOVW $16, YA
	MOV Y, #$0F
	MOV A, $6F
	CMP A, #$01
	BEQ CODE_1151
	CMP A, #$02
	BEQ CODE_114F
	MOV Y, #$09
	BRA CODE_1151

CODE_114F:
	MOV Y, #$0D
CODE_1151:
	MOV A, ($16)+y
	MOV $0030+y, A
	DEC Y
	BPL CODE_1151
	MOV X, #$00
	MOV $47, #$01
CODE_115E:
	MOV A, $6F
	CMP A, #$01
	BEQ CODE_1178
	CMP A, #$02
	BEQ CODE_1170
	CMP X, #$0A
	BEQ CODE_1176
	CMP X, #$0C
	BEQ CODE_1176
CODE_1170:
	CMP X, #$0E
	BEQ CODE_1176
	BRA CODE_1178

CODE_1176:
	BRA CODE_1191

CODE_1178:
	MOV A, $31+x
	BEQ CODE_1186
	MOV A, $0211+x
	BNE CODE_1186
	MOV A, #$00
	CALL CODE_1319
CODE_1186:
	MOV A, #$00
	MOV $80+x, A
	MOV $90+x, A
	MOV $91+x, A
	INC A
	MOV $70+x, A
CODE_1191:
	INC X
	INC X
	ASL $47
	BNE CODE_115E
CODE_1197:
	MOV A, $23
	BEQ CODE_11C7
	MOV A, $6F
	CMP A, #$01
	BEQ CODE_11C7
	MOV A, $25
	BEQ CODE_11B3
	CMP A, #$01
	BEQ CODE_11BD
	MOV X, #$0E
	MOV A, #$80
	MOV $5E, A
	MOV $47, A
	BRA CODE_11CE

CODE_11B3:
	MOV X, #$0A
	MOV A, #$20
	MOV $5E, A
	MOV $47, A
	BRA CODE_11CE

CODE_11BD:
	MOV X, #$0C
	MOV A, #$40
	MOV $5E, A
	MOV $47, A
	BRA CODE_11CE

CODE_11C7:
	MOV X, #$00
	MOV $5E, X
	MOV $47, #$01
CODE_11CE:
	MOV $44, X
	MOV A, $31+x
	BEQ CODE_1249
	DEC $70+x
	BNE CODE_123F
CODE_11D8:
	CALL CODE_130F
	BNE CODE_11F7
	MOV A, $80+x
	BNE CODE_11E4
	JMP CODE_1116

CODE_11E4:
	CALL CODE_1468
	DEC $80+x
	BNE CODE_11D8
	MOV A, $0230+x
	MOV $30+x, A
	MOV A, $0231+x
	MOV $31+x, A
	BRA CODE_11D8

CODE_11F7:
	BMI CODE_1219
	MOV $0200+x, A
	CALL CODE_130F
	BMI CODE_1219
	PUSH A
	XCN A
	AND A, #$07
	MOV Y, A
	MOV A, DATA_1FC0+y
	MOV $0201+x, A
	POP A
	AND A, #$0F
	MOV Y, A
	MOV A, DATA_1FC8+y
	MOV $0210+x, A
	CALL CODE_130F
CODE_1219:
	CMP A, #$E0
	BCC CODE_1222
	CALL CODE_12FD
	BRA CODE_11D8

CODE_1222:
	MOV A, $0400+x
	OR A, $1B
	BNE CODE_122D
	MOV A, Y
	CALL CODE_0A96
CODE_122D:
	MOV A, $0200+x
	MOV $70+x, A
	MOV Y, A
	MOV A, $0201+x
	MUL YA
	MOV A, Y
	BNE CODE_123B
	INC A
CODE_123B:
	MOV $71+x, A
	BRA CODE_1246

CODE_123F:
	MOV A, $1B
	BNE CODE_1249
	CALL CODE_16FF
CODE_1246:
	CALL CODE_155D
CODE_1249:
	MOV A, $23
	BNE CODE_1269
	MOV A, $6F
	CMP A, #$01
	BEQ CODE_1261
	CMP A, #$02
	BEQ CODE_125D
	CMP X, #$08
	BEQ CODE_1267
	BRA CODE_1261

CODE_125D:
	CMP X, #$0C
	BEQ CODE_1267
CODE_1261:
	INC X
	INC X
	ASL $47
	BNE CODE_126B
CODE_1267:
	BRA CODE_1271

CODE_1269:
	BRA CODE_1271

CODE_126B:
	JMP CODE_11CE

CODE_126E:
	NOP
	NOP
	NOP
CODE_1271:
	MOV A, $54
	BEQ CODE_1280
	MOVW YA, $56
	ADDW YA, $52
	DBNZ $54, CODE_127E
	MOVW YA, $54
CODE_127E:
	MOVW $52, YA
CODE_1280:
	MOV A, $68
	BEQ CODE_1299
	MOVW YA, $64
	ADDW YA, $60
	MOVW $60, YA
	MOVW YA, $66
	ADDW YA, $62
	DBNZ $68, CODE_1297
	MOVW YA, $68
	MOVW $60, YA
	MOV Y, $6A
CODE_1297:
	MOVW $62, YA
CODE_1299:
	MOV A, $5A
	BEQ CODE_12AB
	MOVW YA, $5C
	ADDW YA, $58
	DBNZ $5A, CODE_12A6
	MOVW YA, $5A
CODE_12A6:
	MOVW $58, YA
	MOV $5E, #$FF
CODE_12AB:
	MOV A, $23
	BNE CODE_12DB
	MOV A, $6F
	BEQ CODE_12CF
	CMP A, #$02
	BEQ CODE_12C3
	MOV A, #$08
	MOV CODE_126E, A
	MOV X, #$00
	MOV $47, #$01
	BRA CODE_12D9

CODE_12C3:
	MOV A, #$07
	MOV CODE_126E, A
	MOV X, #$00
	MOV $47, #$01
	BRA CODE_12D9

CODE_12CF:
	MOV A, #$05
	MOV CODE_126E, A
	MOV X, #$00
	MOV $47, #$01
CODE_12D9:
	BRA CODE_12E8

CODE_12DB:
	MOV A, #$01
	MOV CODE_126E, A
	MOV X, CODE_126E+$01
	MOV A, CODE_126E+$02
	MOV $47, A
CODE_12E8:
	MOV A, $31+x
	BEQ CODE_12EF
	CALL CODE_1619
CODE_12EF:
	INC X
	INC X
	ASL $47
	MOV A, CODE_126E
	DEC A
	MOV CODE_126E, A
	BNE CODE_12E8
	RET

;--------------------------------------------------------------------

CODE_12FD:
	ASL A
	MOV Y, A
	MOV A, CODE_14FA+$03+y
	PUSH A
	MOV A, CODE_14FA+$02+y
	PUSH A
	MOV A, Y
	LSR A
	MOV Y, A
	MOV A, CODE_159A+y
	BEQ CODE_1317
CODE_130F:
	MOV A, ($30+x)
CODE_1311:
	INC $30+x
	BNE CODE_1317
	INC $31+x
CODE_1317:
	MOV Y, A
	RET

;--------------------------------------------------------------------

CODE_1319:
	MOV $0211+x, A
	MOV Y, A
	BPL CODE_1325
	SETC
	SBC A, #$CA
	CLRC
	ADC A, $5F
CODE_1325:
	MOV Y, #$06
	MUL YA
	MOVW $14, YA
	CLRC
	ADC $14, #$00
	ADC $15, #$1E
	MOV A, $1A
	AND A, $47
	BNE CODE_1371
	PUSH X
	MOV A, X
	XCN A
	LSR A
	OR A, #$04
	MOV X, A
	MOV Y, #$00
	MOV A, ($14)+y
	BPL CODE_1352
	AND A, #$1F
	AND $48, #$20
	TSET $0048, A
	OR $49, $47
	MOV A, Y
	BRA CODE_1359

CODE_1352:
	MOV A, $47
	TCLR $0049, A
CODE_1357:
	MOV A, ($14)+y
CODE_1359:
	MOV $00F2, X
	MOV $00F3, A
	INC X
	INC Y
	CMP Y, #$04
	BNE CODE_1357
	POP X
	MOV A, ($14)+y
	MOV $0221+x, A
	INC Y
	MOV A, ($14)+y
	MOV $0220+x, A
CODE_1371:
	RET

;--------------------------------------------------------------------

CODE_1372:
	MOV $0351+x, A
	AND A, #$1F
	MOV $0331+x, A
	MOV A, #$00
	MOV $0330+x, A
	RET

;--------------------------------------------------------------------

CODE_1380:
	MOV $91+x, A
	PUSH A
	CALL CODE_130F
	MOV $0350+x, A
	SETC
	SBC A, $0331+x
	POP X
	CALL CODE_15A0
	MOV $0340+x, A
	MOV A, Y
	MOV $0341+x, A
	RET

;--------------------------------------------------------------------

CODE_1399:
	MOV $02B0+x, A
	CALL CODE_130F
	MOV $02A1+x, A
	CALL CODE_130F
CODE_13A5:
	MOV $B1+x, A
	MOV $02C1+x, A
	MOV A, #$00
	MOV $02B1+x, A
	RET

;--------------------------------------------------------------------

CODE_13B0:
	MOV $02B1+x, A
	PUSH A
	MOV Y, #$00
	MOV A, $B1+x
	POP X
	DIV YA, X
	MOV X, $44
	MOV $02C0+x, A
	RET

;--------------------------------------------------------------------

CODE_13C0:
	MOV A, $21
	BNE CODE_13C8
	MOV A, #$00
	MOVW $58, YA
CODE_13C8:
	RET

;--------------------------------------------------------------------

CODE_13C9:
	MOV $5A, A
	CALL CODE_130F
	MOV $5B, A
	SETC
	SBC A, $59
	MOV X, $5A
	CALL CODE_15A0
	MOVW $5C, YA
	RET

;--------------------------------------------------------------------

CODE_13DB:
	MOV A, #$00
	MOVW $52, YA
	RET

;--------------------------------------------------------------------

CODE_13E0:
	MOV $54, A
	CALL CODE_130F
	MOV $55, A
	SETC
	SBC A, $53
	MOV X, $54
	CALL CODE_15A0
	MOVW $56, YA
	RET

;--------------------------------------------------------------------

CODE_13F2:
	CALL CODE_130F
	RET

;--------------------------------------------------------------------

CODE_13F6:
	MOV $50, A
	RET

;--------------------------------------------------------------------

CODE_13F9:
	MOV $02F0+x, A
	RET

;--------------------------------------------------------------------

CODE_13FD:
	MOV $02E0+x, A
	CALL CODE_130F
	MOV $02D1+x, A
	CALL CODE_130F
CODE_1409:
	MOV $C1+x, A
	RET

;--------------------------------------------------------------------

CODE_140C:
	MOV A, #$01
	BRA CODE_1412

CODE_1410:
	MOV A, #$00
CODE_1412:
	MOV $0290+x, A
	MOV A, Y
	MOV $0281+x, A
	CALL CODE_130F
	MOV $0280+x, A
	CALL CODE_130F
	MOV $0291+x, A
	RET

;--------------------------------------------------------------------

CODE_1426:
	MOV $0280+x, A
	RET

;--------------------------------------------------------------------

CODE_142A:
	MOV $0301+x, A
	MOV A, #$00
	MOV $0300+x, A
	RET

;--------------------------------------------------------------------

CODE_1433:
	MOV $90+x, A
	PUSH A
	CALL CODE_130F
	MOV $0320+x, A
	SETC
	SBC A, $0301+x
	POP X
	CALL CODE_15A0
	MOV $0310+x, A
	MOV A, Y
	MOV $0311+x, A
	RET

;--------------------------------------------------------------------

CODE_144C:
	MOV $0381+x, A
	RET

;--------------------------------------------------------------------

CODE_1450:
	MOV $0240+x, A
	CALL CODE_130F
	MOV $0241+x, A
	CALL CODE_130F
	MOV $80+x, A
	MOV A, $30+x
	MOV $0230+x, A
	MOV A, $31+x
	MOV $0231+x, A
CODE_1468:
	MOV A, $0240+x
	MOV $30+x, A
	MOV A, $0241+x
	MOV $31+x, A
	RET

;--------------------------------------------------------------------

CODE_1473:
	MOV $4A, A
	CALL CODE_130F
	MOV A, #$00
	MOVW $60, YA
	CALL CODE_130F
	MOV A, #$00
	MOVW $62, YA
	CLR5 $48
	RET

;--------------------------------------------------------------------

CODE_1486:
	PUSH X
	CMP X, #$0E
	BEQ CODE_149B
	CMP X, #$0C
	BEQ CODE_14A2
	CMP X, #$0A
	BEQ CODE_14A9
	POP X
	MOVW $60, YA
	MOVW $62, YA
	SET5 $48
	RET

CODE_149B:
	MOV X, $0B
	CALL CODE_0F83
	POP X
	RET

CODE_14A2:
	MOV X, $0A
	CALL CODE_0ED6
	POP X
	RET

CODE_14A9:
	MOV X, $09
	CALL CODE_0E26
	POP X
	RET

;--------------------------------------------------------------------

CODE_14B0:
	MOV $68, A
	CALL CODE_130F
	MOV $69, A
	SETC
	SBC A, $61
	MOV X, $68
	CALL CODE_15A0
	MOVW $64, YA
	CALL CODE_130F
	MOV $6A, A
	SETC
	SBC A, $63
	MOV X, $68
	CALL CODE_15A0
	MOVW $66, YA
	RET

;--------------------------------------------------------------------

CODE_14D1:
	CALL CODE_14F3
	CALL CODE_130F
	MOV $4E, A
	CALL CODE_130F
	MOV Y, #$08
	MUL YA
	MOV X, A
	MOV Y, #$0F
CODE_14E2:
	MOV A, DATA_18AC+x
	CALL CODE_0B8B
	INC X
	MOV A, Y
	CLRC
	ADC A, #$10
	MOV Y, A
	BPL CODE_14E2
	MOV X, $44
	RET

;--------------------------------------------------------------------

CODE_14F3:
	MOV $4D, A
	MOV Y, #$7D
	MOV $00F2, Y
CODE_14FA:
	MOV A, $00F3
	CMP A, $4D
	BEQ CODE_152C
	AND A, #$0F
	EOR A, #$FF
	BBC7 $4C, CODE_150B
	CLRC
	ADC A, $4C
CODE_150B:
	MOV $4C, A
	MOV Y, #$04
CODE_150F:
	MOV A, DATA_18CB+y
	MOV $00F2, A
	MOV A, #$00
	MOV $00F3, A
CODE_151A:
	DBNZ Y, CODE_150F
	MOV A, $48
	OR A, #$20
	MOV Y, #$6C
	CALL CODE_0B8B
	MOV A, $4D
	MOV Y, #$7D
	CALL CODE_0B8B
CODE_152C:
	ASL A
	ASL A
	ASL A
	EOR A, #$FF
	SETC
	ADC A, #$CF
	MOV Y, #$6D
	JMP CODE_0B8B

;--------------------------------------------------------------------

CODE_1539:
	MOV $5F, A
	RET

;--------------------------------------------------------------------

CODE_153C:
	CALL CODE_1311
	MOV Y, A
	BNE CODE_1549
	MOV A, $47
	OR A, $29
	MOV $29, A
	RET

CODE_1549:
	MOV A, $47
	EOR A, #$FF
	AND A, $29
	MOV $29, A
	RET

;--------------------------------------------------------------------

CODE_1552:
	INC A
	MOV $0400+x, A
	RET

;--------------------------------------------------------------------

CODE_1557:
	INC A
CODE_1558:
	MOV $1B, A
	JMP CODE_1041

;--------------------------------------------------------------------

CODE_155D:
	MOV A, $A0+x
	BNE CODE_1594
	MOV A, ($30+x)
	CMP A, #$F9
	BNE CODE_1594
	CALL CODE_1311
	CALL CODE_130F
CODE_156D:
	MOV $A1+x, A
	CALL CODE_130F
	MOV $A0+x, A
	CALL CODE_130F
	CLRC
	ADC A, $50
	ADC A, $02F0+x
CODE_157D:
	AND A, #$7F
	MOV $0380+x, A
	SETC
	SBC A, $0361+x
	MOV Y, $A0+x
	PUSH Y
	POP X
	CALL CODE_15A0
	MOV $0370+x, A
	MOV A, Y
	MOV $0371+x, A
CODE_1594:
	RET

;--------------------------------------------------------------------

CODE_1595:
	MOV A, $0361+x
	MOV $11, A
CODE_159A:
	MOV A, $0360+X
	MOV $10, A
	RET

;--------------------------------------------------------------------

CODE_15A0:
	NOTC
	ROR $12
	BPL CODE_15A8
	EOR A, #$FF
	INC A
CODE_15A8:
	MOV Y, #$00
	DIV YA, X
	PUSH A
	MOV A, #$00
	DIV YA, X
	POP Y
	MOV X, $44
CODE_15B2:
	BBC7 $12, CODE_15BB
	MOVW $14, YA
	MOVW YA, $0E
	SUBW YA, $14
CODE_15BB:
	RET

;--------------------------------------------------------------------

DATA_15BC:
	dw CODE_1319
	dw CODE_1372
	dw CODE_1380
	dw CODE_1399
	dw CODE_13A5
	dw CODE_13C0
	dw CODE_13C9
	dw CODE_13DB
	dw CODE_13E0
	dw CODE_13F6
	dw CODE_13F9
	dw CODE_13FD
	dw CODE_1409
	dw CODE_142A
	dw CODE_1433
	dw CODE_1450
	dw CODE_13B0
	dw CODE_140C
	dw CODE_1410
	dw CODE_1426
	dw CODE_144C
	dw CODE_1473
	dw CODE_1486
	dw CODE_14D1
	dw CODE_14B0
	dw CODE_156D
	dw CODE_1539
	dw CODE_153C
	dw CODE_1552
	dw CODE_1557
	dw CODE_1558

DATA_15FA:
	db $01,$01,$02,$03,$00,$01,$02,$01
	db $02,$01,$01,$03,$00,$01,$02,$03
	db $01,$03,$03,$00,$01,$03,$00,$03
	db $03,$03,$01,$02,$00,$00,$00

;--------------------------------------------------------------------

CODE_1619:
	MOV A, $90+x
	BEQ CODE_165E
	OR $5E, $47
	DEC $90+x
	BNE CODE_162E
	MOV A, #$00
	MOV $0300+x, A
	MOV A, $0320+x
	BRA CODE_163E

CODE_162E:
	CLRC
	MOV A, $0300+x
	ADC A, $0310+x
	MOV $0300+x, A
	MOV A, $0301+x
	ADC A, $0311+x
CODE_163E:
	MOV $0301+x, A
	BRA CODE_165E

CODE_1643:
	MOV A, $90+x
	BEQ CODE_165E
	OR $5E, $47
	MOV A, $90+x
	BNE CODE_1658
	MOV A, #$00
	MOV $0300+x, A
	MOV A, $0320+x
	BRA CODE_165B

CODE_1658:
	MOV A, $0301+x
CODE_165B:
	MOV $0301+x, A
CODE_165E:
	MOV Y, $C1+x
	BEQ CODE_1685
	MOV A, $02E0+x
	CBNE $C0+x, CODE_1683
	OR $5E, $47
	MOV A, $02D0+x
	BPL CODE_1677
	INC Y
	BNE CODE_1677
	MOV A, #$80
	BRA CODE_167B

CODE_1677:
	CLRC
	ADC A, $02D1+x
CODE_167B:
	MOV $02D0+x, A
	CALL CODE_187A
	BRA CODE_168A

CODE_1683:
	INC $C0+x
CODE_1685:
	MOV A, #$FF
	CALL CODE_1885
CODE_168A:
	MOV A, $91+x
	BEQ CODE_16B2
	OR $5E, $47
	DEC $91+x
	BNE CODE_169F
	MOV A, #$00
	MOV $0330+x, A
	MOV A, $0350+x
	BRA CODE_16AF

CODE_169F:
	CLRC
	MOV A, $0330+x
	ADC A, $0340+x
	MOV $0330+x, A
	MOV A, $0331+x
	ADC A, $0341+x
CODE_16AF:
	MOV $0331+x, A
CODE_16B2:
	MOV A, $47
	AND A, $5E
	BEQ CODE_16FE
	MOV A, $0331+x
	MOV Y, A
	MOV A, $0330+x
	MOVW $10, YA
CODE_16C1:
	MOV A, X
	XCN A
	LSR A
	MOV $12, A
CODE_16C6:
	MOV Y, $11
	MOV A, DATA_1897+$01+y
	SETC
	SBC A, DATA_1897+y
	MOV Y, $10
	MUL YA
	MOV A, Y
	MOV Y, $11
	CLRC
	ADC A, DATA_1897+y
	MOV Y, A
	MOV A, $0321+x
	MUL YA
	MOV A, $0351+x
	ASL A
	BBC0 $12, CODE_16E6
	ASL A
CODE_16E6:
	MOV A, Y
	BCC CODE_16EC
	EOR A, #$FF
	INC A
CODE_16EC:
	MOV Y, $12
	CALL CODE_0B83
	MOV Y, #$14
	MOV A, #$00
	SUBW YA, $10
	MOVW $10, YA
	INC $12
	BBC1 $12, CODE_16C6
CODE_16FE:
	RET

;--------------------------------------------------------------------

CODE_16FF:
	MOV A, $71+x
	BEQ CODE_176B
	DEC $71+x
	BEQ CODE_170C
	MOV A, #$02
	CBNE $70+x, CODE_176B
CODE_170C:
	MOV A, $80+x
	MOV $17, A
	MOV A, $30+x
	MOV Y, $31+x
CODE_1714:
	MOVW $14, YA
	MOV Y, #$00
CODE_1718:
	MOV A, ($14)+y
	BEQ CODE_173A
	BMI CODE_1725
CODE_171E:
	INC Y
	BMI CODE_1764
	MOV A, ($14)+y
	BPL CODE_171E
CODE_1725:
	CMP A, #$C8
	BEQ CODE_176B
	CMP A, #$EF
	BEQ CODE_1759
	CMP A, #$E0
	BCC CODE_1764
	PUSH Y
	MOV Y, A
	POP A
	ADC A, CODE_151A+y
	MOV Y, A
	BRA CODE_1718

CODE_173A:
	JMP CODE_1951

CODE_173D:
	MOV A, $17
	BEQ CODE_1764
	DEC $17
	BNE CODE_174F
	MOV A, $0231+x
	PUSH A
	MOV A, $0230+x
	POP Y
	BRA CODE_1714

CODE_174F:
	MOV A, $0241+x
	PUSH A
	MOV A, $0240+x
	POP Y
	BRA CODE_1714

CODE_1759:
	INC Y
	MOV A, ($14)+y
	PUSH A
	INC Y
	MOV A, ($14)+y
	MOV Y, A
	POP A
	BRA CODE_1714

CODE_1764:
	MOV A, $47
	MOV Y, #$5C
	CALL CODE_0B83
CODE_176B:
	CLR7 $13
	MOV A, $A0+x
	BEQ CODE_179D
	MOV A, $A1+x
	BEQ CODE_1779
	DEC $A1+x
	BRA CODE_179D

CODE_1779:
	SET7 $13
	DEC $A0+x
	BNE CODE_178A
	MOV A, $0381+x
	MOV $0360+x, A
	MOV A, $0380+x
	BRA CODE_179A

CODE_178A:
	CLRC
	MOV A, $0360+x
	ADC A, $0370+x
	MOV $0360+x, A
	MOV A, $0361+x
	ADC A, $0371+x
CODE_179A:
	MOV $0361+x, A
CODE_179D:
	CALL CODE_1595
	MOV A, $B1+x
	BEQ CODE_17F0
	MOV A, $02B0+x
	CBNE $B0+x, CODE_17EE
	MOV A, $0100+x
	CMP A, $02B1+x
	BNE CODE_17B7
	MOV A, $02C1+x
	BRA CODE_17C4

CODE_17B7:
	SETP
	INC $00+x
	CLRP
	MOV Y, A
	BEQ CODE_17C0
	MOV A, $B1+x
CODE_17C0:
	CLRC
	ADC A, $02C0+x
CODE_17C4:
	MOV $B1+x, A
	MOV A, $02A0+x
	CLRC
	ADC A, $02A1+x
	MOV $02A0+x, A
CODE_17D0:
	MOV $12, A
	ASL A
	ASL A
	BCC CODE_17D8
	EOR A, #$FF
CODE_17D8:
	MOV Y, A
	MOV A, $B1+x
	CMP A, #$F1
	BCC CODE_17E4
	AND A, #$0F
	MUL YA
	BRA CODE_17E8

CODE_17E4:
	MUL YA
	MOV A, Y
	MOV Y, #$00
CODE_17E8:
	CALL CODE_1865
CODE_17EB:
	JMP CODE_0B00

CODE_17EE:
	INC $B0+x
CODE_17F0:
	BBS7 $13, CODE_17EB
	RET

;--------------------------------------------------------------------

CODE_17F4:
	CLR7 $13
	MOV A, $C1+x
	BEQ CODE_1803
	MOV A, $02E0+x
	CBNE $C0+x, CODE_1803
	CALL CODE_186D
CODE_1803:
	MOV A, $0331+x
	MOV Y, A
	MOV A, $0330+x
	MOVW $10, YA
	MOV A, $91+x
	BEQ CODE_181A
	MOV A, $0341+x
	MOV Y, A
	MOV A, $0340+x
	CALL CODE_184F
CODE_181A:
	BBC7 $13, CODE_1820
	CALL CODE_16C1
CODE_1820:
	CLR7 $13
	CALL CODE_1595
	MOV A, $A0+x
	BEQ CODE_1837
	MOV A, $A1+x
	BNE CODE_1837
	MOV A, $0371+x
	MOV Y, A
	MOV A, $0370+x
	CALL CODE_184F
CODE_1837:
	MOV A, $B1+x
	BEQ CODE_17F0
	MOV A, $02B0+x
	CBNE $B0+x, CODE_17F0
	MOV Y, $51
	MOV A, $02A1+x
	MUL YA
	MOV A, Y
	CLRC
	ADC A, $02A0+x
	JMP CODE_17D0

;--------------------------------------------------------------------

CODE_184F:
	SET7 $13
	MOV $12, Y
	CALL CODE_15B2
	PUSH Y
	MOV Y, $51
	MUL YA
	MOV $14, Y
	MOV $15, #$00
	MOV Y, $51
	POP A
	MUL YA
	ADDW YA, $14
CODE_1865:
	CALL CODE_15B2
	ADDW YA, $10
	MOVW $10, YA
	RET

;--------------------------------------------------------------------

CODE_186D:
	SET7 $13
	MOV Y, $51
	MOV A, $02D1+x
	MUL YA
	MOV A, Y
	CLRC
	ADC A, $02D0+x
CODE_187A:
	ASL A
	BCC CODE_187F
	EOR A, #$FF
CODE_187F:
	MOV Y, $C1+x
	MUL YA
	MOV A, Y
	EOR A, #$FF
CODE_1885:
	MOV Y, $59
	MUL YA
	MOV A, $0210+x
	MUL YA
	MOV A, $0301+x
	MUL YA
	MOV A, Y
	MUL YA
	MOV A, Y
	MOV $0321+x, A
	RET

;--------------------------------------------------------------------

DATA_1897:
	db $00,$01,$03,$07,$0D,$15,$1E,$29
	db $34,$42,$51,$5E,$67,$6E,$73,$77
	db $7A,$7C,$7D,$7E,$7F

DATA_18AC:
	db $7F,$00,$00,$00,$00,$00,$00,$00
	db $58,$BF,$DB,$F0,$FE,$07,$0C,$0C
	db $0C,$21,$2B,$2B,$13,$FE,$F3,$F9
	db $34,$33,$00,$D9,$E5,$01,$FC

DATA_18CB:
	db $EB,$2C,$3C,$0D,$4D,$6C,$4C,$5C
	db $3D,$2D

DATA_18D5:
	db $5C,$61,$63,$4E,$4A,$48,$45,$0E
	db $49,$4B,$46

DATA_18E0:
	db $5F,$08,$DE,$08
	db $65,$09,$F4,$09
	db $8C,$0A,$2C,$0B
	db $D6,$0B,$8B,$0C
	db $4A,$0D,$14,$0E
	db $EA,$0E,$CD,$0F
	db $BE,$10,$2A,$56
	db $65,$72,$20,$53
	db $31,$2E,$32,$30
	db $2A

;--------------------------------------------------------------------

CODE_1905:
	MOV A, #$AA
	MOV $00F4, A
	MOV A, #$BB
	MOV $00F5, A
CODE_190F:
	MOV A, $00F4
	CMP A, #$CC
	BNE CODE_190F
	BRA CODE_1938

CODE_1918:
	MOV Y, $00F4
	BNE CODE_1918
CODE_191D:
	CMP Y, $00F4
	BNE CODE_1931
	MOV A, $00F5
	MOV $00F4, Y
	MOV ($14)+y, A
	INC Y
	BNE CODE_191D
	INC $15
	BRA CODE_191D

CODE_1931:
	BPL CODE_191D
	CMP Y, $00F4
	BPL CODE_191D
CODE_1938:
	MOV A, $00F6
	MOV Y, $00F7
	MOVW $14, YA
	MOV Y, $00F4
	MOV A, $00F5
	MOV $00F4, Y
	BNE CODE_1918
	MOV X, #$31
	MOV $00F1, X
	RET

;--------------------------------------------------------------------

CODE_1951:
	MOV A, $6F
	CMP A, #$01
	BEQ CODE_1967
	CMP A, #$02
	BEQ CODE_1963
	CMP X, #$0A
	BEQ CODE_196C
	CMP X, #$0C
	BEQ CODE_19A0
CODE_1963:
	CMP X, #$0E
	BEQ CODE_19D4
CODE_1967:
	MOV A, ($14)+y
	JMP CODE_173D

CODE_196C:
	PUSH X
	MOV A, $01
	MOV $0111, A
	ASL A
	MOV X, A
	MOV A, $CFB0+$01+x
	BEQ CODE_198F
	POP X
	MOV A, #$00
	MOV $01, A
	MOV $09, A
	MOV $05, A
	MOV A, $CFB0+$01+x
	MOV $3B, A
	MOV A, $CFB0+x
	MOV $3A, A
	JMP CODE_1A15

CODE_198F:
	POP X
	MOV A, #$00
	MOV $01, A
	MOV $09, A
	MOV $0111, A
	MOV $6C, A
	MOV $1D, A
	JMP CODE_1A08

CODE_19A0:
	PUSH X
	MOV A, $02
	MOV $0112, A
	ASL A
	MOV X, A
	MOV A, $D140+$01+x
	BEQ CODE_19C3
	POP X
	MOV A, #$00
	MOV $02, A
	MOV $0A, A
	MOV $06, A
	MOV A, $D140+$01+x
	MOV $3D, A
	MOV A, $D140+x
	MOV $3C, A
	JMP CODE_1A15

CODE_19C3:
	POP X
	MOV A, #$00
	MOV $02, A
	MOV $0A, A
	MOV $0112, A
	MOV $6D, A
	MOV $1E, A
	JMP CODE_1A08

CODE_19D4:
	PUSH X
	MOV A, $03
	MOV $0113, A
	ASL A
	MOV X, A
	MOV A, $D280+$01+x
	BEQ CODE_19F7
	POP X
	MOV A, #$00
	MOV $03, A
	MOV $0B, A
	MOV $07, A
	MOV A, $D280+$01+x
	MOV $3F, A
	MOV A, $D280+x
	MOV $3E, A
	JMP CODE_1A15

CODE_19F7:
	POP X
	MOV A, #$00
	MOV $03, A
	MOV $0B, A
	MOV $0113, A
	MOV $6E, A
	MOV $1F, A
	JMP CODE_1A08

;--------------------------------------------------------------------

CODE_1A08:
	CALL CODE_1A1A
	MOV A, #$00
	MOV $14, A
	MOV $15, A
	MOV $16, A
	MOV $17, A
CODE_1A15:
	MOV A, ($14)+y
	JMP CODE_173D

;--------------------------------------------------------------------

CODE_1A1A:
	MOV A, #$00
	MOV $20+x, A
	MOV $30+x, A
	MOV $31+x, A
	MOV $71+x, A
	MOV $80+x, A
	MOV $81+x, A
	MOV $90+x, A
	MOV $91+x, A
	MOV $A0+x, A
	MOV $A1+x, A
	MOV $B0+x, A
	MOV $B1+x, A
	MOV $C0+x, A
	MOV $C1+x, A
	MOV $0210+x, A
	MOV $0211+x, A
	MOV $0280+x, A
	MOV $0330+x, A
	MOV $0381+x, A
	MOV $0120+x, A
	MOV $0121+x, A
	MOV A, #$01
	MOV $70+x, A
	MOV A, #$0A
	MOV $0331+x, A
	MOV $0351+x, A
	MOV A, $47
	OR A, $29
	MOV $29, A
	RET

;--------------------------------------------------------------------

CODE_1A60:
	CALL CODE_14F3
	MOV X, #$0E
	BRA CODE_1A7E

CODE_1A67:
	CALL CODE_14F3
	MOV A, $6F
	CMP A, #$01
	BEQ CODE_1A7C
	CMP A, #$02
	BEQ CODE_1A78
	MOV X, #$08
	BRA CODE_1A7E

CODE_1A78:
	MOV X, #$0C
	BRA CODE_1A7E

CODE_1A7C:
	MOV X, #$0E
CODE_1A7E:
	SET5 $48
	MOV A, #$00
	MOV $60, A
	MOV $61, A
CODE_1A86:
	MOV $30+x, A
	MOV $31+x, A
	CALL CODE_1A99
	DEC X
	DEC X
	BNE CODE_1A86
	MOV $30+x, A
	MOV $31+x, A
	CALL CODE_1A99
	RET

;--------------------------------------------------------------------

CODE_1A99:
	MOV $71+x, A
	MOV $80+x, A
	MOV $81+x, A
	MOV $90+x, A
	MOV $91+x, A
	MOV $A0+x, A
	MOV $A1+x, A
	MOV $B0+x, A
	MOV $B1+x, A
	MOV $C0+x, A
	MOV $C1+x, A
	MOV $0210+x, A
	MOV $0211+x, A
	MOV $0280+x, A
	MOV $0330+x, A
	MOV $0381+x, A
	RET

;--------------------------------------------------------------------

CODE_1ABF:
	MOV A, $28
	BEQ CODE_1AD5
CODE_1AC3:
	MOV X, #$0E
	MOV $47, #$80
	MOV A, #$00
	MOV $28, A
	BRA CODE_1AE4

CODE_1ACE:
	MOV X, #$0C
	MOV $47, #$40
	BRA CODE_1AE4

CODE_1AD5:
	MOV A, $6F
	CMP A, #$01
	BEQ CODE_1AC3
	CMP A, #$02
	BEQ CODE_1ACE
	MOV X, #$08
	MOV $47, #$10
CODE_1AE4:
	MOV A, #$FF
	MOV $0301+x, A
	MOV A, $0047
	OR A, $29
	MOV $29, A
	MOV A, #$0A
	CALL CODE_1372
	MOV $0211+x, A
	MOV $0381+x, A
	MOV $02F0+x, A
	MOV $0280+x, A
	MOV $0400+x, A
	MOV $B1+x, A
	MOV $C1+x, A
	MOV $0120+x, A
	MOV $0121+x, A
	DEC X
	DEC X
	LSR $47
	BNE CODE_1AE4
	MOV $5A, A
	MOV $68, A
	MOV $54, A
	MOV $50, A
	MOV $42, A
	MOV $5F, A
	RET

;--------------------------------------------------------------------

CODE_1B21:
	MOV A, $6F
	CMP A, #$01
	BEQ CODE_1B37
	CMP A, #$02
	BEQ CODE_1B31
	MOV A, $1A
	EOR A, #$1F
	BRA CODE_1B3B

CODE_1B31:
	MOV A, $1A
	EOR A, #$7F
	BRA CODE_1B3B

CODE_1B37:
	MOV A, $1A
	EOR A, #$FF
CODE_1B3B:
	TSET $0046, A
	MOV A, $23
	BNE CODE_1B48
	CALL CODE_1A67
	CALL CODE_1ABF
CODE_1B48:
	RET

;--------------------------------------------------------------------

CODE_1B49:
	MOV A, #$FF
	MOV $00F7, A
CODE_1B4E:
	MOV A, $00F7
	CMP A, #$FF
	BNE CODE_1B4E
	MOV A, #$FE
	MOV $00F7, A
	RET

;--------------------------------------------------------------------

%SPCDataBlockEnd(!ARAM_EngineLoc)

;--------------------------------------------------------------------

%SPCDataBlockStart(1C00)
DATA_1C00:
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $00,$20,$44,$33
	db $44,$33,$3F,$44
	db $FF,$FF,$FF,$FF

%SPCDataBlockEnd(1C00)

;--------------------------------------------------------------------

%SPCDataBlockStart(1E00)
DATA_1E00:
	db $00,$8B,$2B,$B8,$07,$C0
	db $01,$8B,$2B,$B8,$07,$C0
	db $02,$8B,$2B,$B8,$07,$C0
	db $03,$8B,$2B,$B8,$07,$C0
	db $04,$8B,$2B,$B8,$07,$C0
	db $05,$8B,$2B,$B8,$07,$C0
	db $06,$8B,$2B,$B8,$07,$C0
	db $07,$8B,$2B,$B8,$07,$C0
	db $08,$8B,$2B,$B8,$07,$C0
	db $09,$8B,$2B,$B8,$07,$C0
	db $0A,$8B,$2B,$B8,$07,$C0
	db $0B,$8B,$2B,$B8,$07,$C0
	db $0C,$8B,$2B,$B8,$07,$C0
	db $0D,$8B,$2B,$B8,$07,$C0
	db $0E,$8B,$2B,$B8,$07,$C0
	db $0F,$8B,$2B,$B8,$07,$C0
	db $10,$8B,$2B,$B8,$07,$C0
	db $11,$8B,$2B,$B8,$07,$C0
	db $12,$8B,$2B,$B8,$07,$C0
	db $13,$8B,$2B,$B8,$07,$C0
	db $14,$8B,$2B,$B8,$07,$C0
	db $15,$8B,$2B,$B8,$07,$C0
	db $16,$8B,$2B,$B8,$07,$C0
	db $17,$8B,$2B,$B8,$07,$C0
	db $18,$8B,$2B,$B8,$07,$C0
	db $19,$8B,$2B,$B8,$07,$C0
	db $1A,$8B,$2B,$B8,$07,$C0
	db $1B,$8B,$2B,$B8,$07,$C0
	db $1C,$8B,$2B,$B8,$07,$C0
	db $1D,$8B,$2B,$B8,$07,$C0
	db $1E,$8B,$2B,$B8,$07,$C0
	db $1F,$8B,$2B,$B8,$07,$C0
	db $20,$8B,$2B,$B8,$07,$C0
	db $21,$8B,$2B,$B8,$07,$C0
	db $22,$8B,$2B,$B8,$07,$C0
	db $23,$8B,$2B,$B8,$07,$C0
	db $24,$8B,$2B,$B8,$07,$C0
	db $25,$8B,$2B,$B8,$07,$C0
	db $26,$8B,$2B,$B8,$07,$C0
	db $27,$8B,$2B,$B8,$07,$C0
	db $28,$8B,$2B,$B8,$07,$C0
	db $29,$8B,$2B,$B8,$07,$C0
	db $2A,$8B,$2B,$B8,$07,$C0
	db $2B,$8B,$2B,$B8,$07,$C0
	db $2C,$8B,$2B,$B8,$07,$C0
	db $2D,$8B,$2B,$B8,$07,$C0
	db $2E,$8B,$2B,$B8,$07,$C0
	db $2F,$8B,$2B,$B8,$07,$C0
	db $30,$8B,$2B,$B8,$07,$C0
	db $31,$8B,$2B,$B8,$07,$C0
	db $32,$8B,$2B,$B8,$07,$C0
	db $33,$8B,$2B,$B8,$07,$C0
	db $34,$8B,$2B,$B8,$07,$C0
	db $35,$8B,$2B,$B8,$07,$C0
	db $36,$8B,$2B,$B8,$07,$C0
	db $37,$8B,$2B,$B8,$07,$C0
	db $38,$8B,$2B,$B8,$07,$C0
	db $39,$FF,$E0,$B8,$07,$C0
	db $3A,$FF,$E0,$B8,$07,$A0

%SPCDataBlockEnd(1E00)

;--------------------------------------------------------------------

%SPCDataBlockStart(1FC0)
DATA_1FC0:
	db $32,$65,$7F,$98,$B2,$CB,$E5,$FC

DATA_1FC8:
	db $19,$32,$4C,$65,$72,$7F,$8C,$98,$A5,$B2,$BF,$CB,$D8,$E5,$F2,$FC

%SPCDataBlockEnd(1FC0)

;--------------------------------------------------------------------

%SPCDataBlockStart(CF00)
DATA_CF00:
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $8F,$00,$99,$00,$9F,$00,$94,$00
	db $9A,$00,$9A,$00,$00,$00,$00,$00
	db $00,$00,$9E,$00,$00,$00,$9A,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $9D,$00,$D8,$00,$DD,$00,$FB,$00
	db $C2,$00,$94,$00,$00,$00,$00,$00
	db $00,$00,$E9,$00,$00,$00,$FF,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $A0,$00,$58,$00,$53,$00,$54,$00
	db $CA,$00,$AA,$00,$00,$00,$00,$00
	db $00,$00,$3F,$00,$00,$00,$C0,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $10,$D4,$10,$D4,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$10,$D4,$10,$D4
	db $14,$D4,$00,$00,$24,$D4,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$E5,$00,$F5,$FF
	db $00,$00,$F7,$01,$00,$03,$CA,$60
	db $7F,$80,$00

%SPCDataBlockEnd(CF00)

;--------------------------------------------------------------------

%EndSPCUploadAndJumpToEngine($!ARAM_EngineLoc)
