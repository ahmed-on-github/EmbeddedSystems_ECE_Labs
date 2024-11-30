
_DIO_init:

;dio.c,4 :: 		void DIO_init (uint8_t port , uint8_t pin , uint8_t dir){
;dio.c,5 :: 		switch(port){
	JMP        L_DIO_init0
;dio.c,6 :: 		case PORT_A:
L_DIO_init2:
;dio.c,7 :: 		if(dir==IN)
	LDI        R27, 0
	CP         R4, R27
	BREQ       L__DIO_init61
	JMP        L_DIO_init3
L__DIO_init61:
;dio.c,8 :: 		CLRB(DDRA,pin);
	MOV        R27, R3
	LDI        R16, 1
	TST        R27
	BREQ       L__DIO_init63
L__DIO_init62:
	LSL        R16
	DEC        R27
	BRNE       L__DIO_init62
L__DIO_init63:
	MOV        R17, R16
	COM        R17
	IN         R16, 58
	AND        R16, R17
	OUT        58, R16
	JMP        L_DIO_init4
L_DIO_init3:
;dio.c,9 :: 		else if(dir==OUT)
	LDI        R27, 1
	CP         R4, R27
	BREQ       L__DIO_init64
	JMP        L_DIO_init5
L__DIO_init64:
;dio.c,10 :: 		SETB(DDRA,pin);
	MOV        R27, R3
	LDI        R17, 1
	TST        R27
	BREQ       L__DIO_init66
L__DIO_init65:
	LSL        R17
	DEC        R27
	BRNE       L__DIO_init65
L__DIO_init66:
	IN         R16, 58
	OR         R16, R17
	OUT        58, R16
L_DIO_init5:
L_DIO_init4:
;dio.c,13 :: 		break;
	JMP        L_DIO_init1
;dio.c,14 :: 		case PORT_B:
L_DIO_init6:
;dio.c,15 :: 		if(dir==IN)
	LDI        R27, 0
	CP         R4, R27
	BREQ       L__DIO_init67
	JMP        L_DIO_init7
L__DIO_init67:
;dio.c,16 :: 		CLRB(DDRB,pin);
	MOV        R27, R3
	LDI        R16, 1
	TST        R27
	BREQ       L__DIO_init69
L__DIO_init68:
	LSL        R16
	DEC        R27
	BRNE       L__DIO_init68
L__DIO_init69:
	MOV        R17, R16
	COM        R17
	IN         R16, 55
	AND        R16, R17
	OUT        55, R16
	JMP        L_DIO_init8
L_DIO_init7:
;dio.c,17 :: 		else if(dir==OUT)
	LDI        R27, 1
	CP         R4, R27
	BREQ       L__DIO_init70
	JMP        L_DIO_init9
L__DIO_init70:
;dio.c,18 :: 		SETB(DDRB,pin);
	MOV        R27, R3
	LDI        R17, 1
	TST        R27
	BREQ       L__DIO_init72
L__DIO_init71:
	LSL        R17
	DEC        R27
	BRNE       L__DIO_init71
L__DIO_init72:
	IN         R16, 55
	OR         R16, R17
	OUT        55, R16
L_DIO_init9:
L_DIO_init8:
;dio.c,22 :: 		break;
	JMP        L_DIO_init1
;dio.c,23 :: 		case PORT_C:
L_DIO_init10:
;dio.c,24 :: 		if(dir==IN)
	LDI        R27, 0
	CP         R4, R27
	BREQ       L__DIO_init73
	JMP        L_DIO_init11
L__DIO_init73:
;dio.c,25 :: 		CLRB(DDRC,pin);
	MOV        R27, R3
	LDI        R16, 1
	TST        R27
	BREQ       L__DIO_init75
L__DIO_init74:
	LSL        R16
	DEC        R27
	BRNE       L__DIO_init74
L__DIO_init75:
	MOV        R17, R16
	COM        R17
	IN         R16, 52
	AND        R16, R17
	OUT        52, R16
	JMP        L_DIO_init12
L_DIO_init11:
;dio.c,26 :: 		else if(dir==OUT)
	LDI        R27, 1
	CP         R4, R27
	BREQ       L__DIO_init76
	JMP        L_DIO_init13
L__DIO_init76:
;dio.c,27 :: 		SETB(DDRC,pin);
	MOV        R27, R3
	LDI        R17, 1
	TST        R27
	BREQ       L__DIO_init78
L__DIO_init77:
	LSL        R17
	DEC        R27
	BRNE       L__DIO_init77
L__DIO_init78:
	IN         R16, 52
	OR         R16, R17
	OUT        52, R16
L_DIO_init13:
L_DIO_init12:
;dio.c,31 :: 		break;
	JMP        L_DIO_init1
;dio.c,32 :: 		case PORT_D:
L_DIO_init14:
;dio.c,33 :: 		if(dir==IN)
	LDI        R27, 0
	CP         R4, R27
	BREQ       L__DIO_init79
	JMP        L_DIO_init15
L__DIO_init79:
;dio.c,34 :: 		CLRB(DDRD,pin);
	MOV        R27, R3
	LDI        R16, 1
	TST        R27
	BREQ       L__DIO_init81
L__DIO_init80:
	LSL        R16
	DEC        R27
	BRNE       L__DIO_init80
L__DIO_init81:
	MOV        R17, R16
	COM        R17
	IN         R16, 49
	AND        R16, R17
	OUT        49, R16
	JMP        L_DIO_init16
L_DIO_init15:
;dio.c,35 :: 		else if(dir==OUT)
	LDI        R27, 1
	CP         R4, R27
	BREQ       L__DIO_init82
	JMP        L_DIO_init17
L__DIO_init82:
;dio.c,36 :: 		SETB(DDRD,pin);
	MOV        R27, R3
	LDI        R17, 1
	TST        R27
	BREQ       L__DIO_init84
L__DIO_init83:
	LSL        R17
	DEC        R27
	BRNE       L__DIO_init83
L__DIO_init84:
	IN         R16, 49
	OR         R16, R17
	OUT        49, R16
L_DIO_init17:
L_DIO_init16:
;dio.c,39 :: 		break;
	JMP        L_DIO_init1
;dio.c,40 :: 		default:
L_DIO_init18:
;dio.c,42 :: 		break;
	JMP        L_DIO_init1
;dio.c,43 :: 		}
L_DIO_init0:
	LDI        R27, 65
	CP         R2, R27
	BRNE       L__DIO_init85
	JMP        L_DIO_init2
L__DIO_init85:
	LDI        R27, 66
	CP         R2, R27
	BRNE       L__DIO_init86
	JMP        L_DIO_init6
L__DIO_init86:
	LDI        R27, 67
	CP         R2, R27
	BRNE       L__DIO_init87
	JMP        L_DIO_init10
L__DIO_init87:
	LDI        R27, 68
	CP         R2, R27
	BRNE       L__DIO_init88
	JMP        L_DIO_init14
L__DIO_init88:
	JMP        L_DIO_init18
L_DIO_init1:
;dio.c,44 :: 		}
L_end_DIO_init:
	RET
; end of _DIO_init

_DIO_write:

;dio.c,45 :: 		void DIO_write (uint8_t port , uint8_t pin , uint8_t value){
;dio.c,46 :: 		switch(port){
	JMP        L_DIO_write19
;dio.c,47 :: 		case PORT_A:
L_DIO_write21:
;dio.c,48 :: 		if( BITVAL(DDRA,pin) ){
	MOV        R27, R3
	LDI        R18, 1
	LDI        R19, 0
	TST        R27
	BREQ       L__DIO_write91
L__DIO_write90:
	LSL        R18
	ROL        R19
	DEC        R27
	BRNE       L__DIO_write90
L__DIO_write91:
	IN         R16, 58
	LDI        R17, 0
	AND        R16, R18
	AND        R17, R19
	MOV        R27, R3
	TST        R27
	BREQ       L__DIO_write93
L__DIO_write92:
	ASR        R17
	ROR        R16
	DEC        R27
	BRNE       L__DIO_write92
L__DIO_write93:
	MOV        R27, R16
	OR         R27, R17
	BRNE       L__DIO_write94
	JMP        L_DIO_write22
L__DIO_write94:
;dio.c,49 :: 		if(value==LOW)
	LDI        R27, 0
	CP         R4, R27
	BREQ       L__DIO_write95
	JMP        L_DIO_write23
L__DIO_write95:
;dio.c,50 :: 		CLRB(PORTA,pin);
	MOV        R27, R3
	LDI        R16, 1
	TST        R27
	BREQ       L__DIO_write97
L__DIO_write96:
	LSL        R16
	DEC        R27
	BRNE       L__DIO_write96
L__DIO_write97:
	MOV        R17, R16
	COM        R17
	IN         R16, 59
	AND        R16, R17
	OUT        59, R16
	JMP        L_DIO_write24
L_DIO_write23:
;dio.c,51 :: 		else if(value==HIGH)
	LDI        R27, 1
	CP         R4, R27
	BREQ       L__DIO_write98
	JMP        L_DIO_write25
L__DIO_write98:
;dio.c,52 :: 		SETB(PORTA,pin);
	MOV        R27, R3
	LDI        R17, 1
	TST        R27
	BREQ       L__DIO_write100
L__DIO_write99:
	LSL        R17
	DEC        R27
	BRNE       L__DIO_write99
L__DIO_write100:
	IN         R16, 59
	OR         R16, R17
	OUT        59, R16
L_DIO_write25:
L_DIO_write24:
;dio.c,55 :: 		}
L_DIO_write22:
;dio.c,58 :: 		break;
	JMP        L_DIO_write20
;dio.c,59 :: 		case PORT_B:
L_DIO_write26:
;dio.c,60 :: 		if( BITVAL(DDRB,pin) ){
	MOV        R27, R3
	LDI        R18, 1
	LDI        R19, 0
	TST        R27
	BREQ       L__DIO_write102
L__DIO_write101:
	LSL        R18
	ROL        R19
	DEC        R27
	BRNE       L__DIO_write101
L__DIO_write102:
	IN         R16, 55
	LDI        R17, 0
	AND        R16, R18
	AND        R17, R19
	MOV        R27, R3
	TST        R27
	BREQ       L__DIO_write104
L__DIO_write103:
	ASR        R17
	ROR        R16
	DEC        R27
	BRNE       L__DIO_write103
L__DIO_write104:
	MOV        R27, R16
	OR         R27, R17
	BRNE       L__DIO_write105
	JMP        L_DIO_write27
L__DIO_write105:
;dio.c,61 :: 		if(value==LOW)
	LDI        R27, 0
	CP         R4, R27
	BREQ       L__DIO_write106
	JMP        L_DIO_write28
L__DIO_write106:
;dio.c,62 :: 		CLRB(PORTB,pin);
	MOV        R27, R3
	LDI        R16, 1
	TST        R27
	BREQ       L__DIO_write108
L__DIO_write107:
	LSL        R16
	DEC        R27
	BRNE       L__DIO_write107
L__DIO_write108:
	MOV        R17, R16
	COM        R17
	IN         R16, 56
	AND        R16, R17
	OUT        56, R16
	JMP        L_DIO_write29
L_DIO_write28:
;dio.c,63 :: 		else if(value==HIGH)
	LDI        R27, 1
	CP         R4, R27
	BREQ       L__DIO_write109
	JMP        L_DIO_write30
L__DIO_write109:
;dio.c,64 :: 		SETB(PORTB,pin);
	MOV        R27, R3
	LDI        R17, 1
	TST        R27
	BREQ       L__DIO_write111
L__DIO_write110:
	LSL        R17
	DEC        R27
	BRNE       L__DIO_write110
L__DIO_write111:
	IN         R16, 56
	OR         R16, R17
	OUT        56, R16
L_DIO_write30:
L_DIO_write29:
;dio.c,67 :: 		}
L_DIO_write27:
;dio.c,70 :: 		break;
	JMP        L_DIO_write20
;dio.c,71 :: 		case PORT_C:
L_DIO_write31:
;dio.c,72 :: 		if( BITVAL(DDRC,pin) ){
	MOV        R27, R3
	LDI        R18, 1
	LDI        R19, 0
	TST        R27
	BREQ       L__DIO_write113
L__DIO_write112:
	LSL        R18
	ROL        R19
	DEC        R27
	BRNE       L__DIO_write112
L__DIO_write113:
	IN         R16, 52
	LDI        R17, 0
	AND        R16, R18
	AND        R17, R19
	MOV        R27, R3
	TST        R27
	BREQ       L__DIO_write115
L__DIO_write114:
	ASR        R17
	ROR        R16
	DEC        R27
	BRNE       L__DIO_write114
L__DIO_write115:
	MOV        R27, R16
	OR         R27, R17
	BRNE       L__DIO_write116
	JMP        L_DIO_write32
L__DIO_write116:
;dio.c,73 :: 		if(value==LOW)
	LDI        R27, 0
	CP         R4, R27
	BREQ       L__DIO_write117
	JMP        L_DIO_write33
L__DIO_write117:
;dio.c,74 :: 		CLRB(PORTC,pin);
	MOV        R27, R3
	LDI        R16, 1
	TST        R27
	BREQ       L__DIO_write119
L__DIO_write118:
	LSL        R16
	DEC        R27
	BRNE       L__DIO_write118
L__DIO_write119:
	MOV        R17, R16
	COM        R17
	IN         R16, 53
	AND        R16, R17
	OUT        53, R16
	JMP        L_DIO_write34
L_DIO_write33:
;dio.c,75 :: 		else if(value==HIGH)
	LDI        R27, 1
	CP         R4, R27
	BREQ       L__DIO_write120
	JMP        L_DIO_write35
L__DIO_write120:
;dio.c,76 :: 		SETB(PORTC,pin);
	MOV        R27, R3
	LDI        R17, 1
	TST        R27
	BREQ       L__DIO_write122
L__DIO_write121:
	LSL        R17
	DEC        R27
	BRNE       L__DIO_write121
L__DIO_write122:
	IN         R16, 53
	OR         R16, R17
	OUT        53, R16
L_DIO_write35:
L_DIO_write34:
;dio.c,79 :: 		}
L_DIO_write32:
;dio.c,83 :: 		break;
	JMP        L_DIO_write20
;dio.c,84 :: 		case PORT_D:
L_DIO_write36:
;dio.c,85 :: 		if( BITVAL(DDRC,pin) ){
	MOV        R27, R3
	LDI        R18, 1
	LDI        R19, 0
	TST        R27
	BREQ       L__DIO_write124
L__DIO_write123:
	LSL        R18
	ROL        R19
	DEC        R27
	BRNE       L__DIO_write123
L__DIO_write124:
	IN         R16, 52
	LDI        R17, 0
	AND        R16, R18
	AND        R17, R19
	MOV        R27, R3
	TST        R27
	BREQ       L__DIO_write126
L__DIO_write125:
	ASR        R17
	ROR        R16
	DEC        R27
	BRNE       L__DIO_write125
L__DIO_write126:
	MOV        R27, R16
	OR         R27, R17
	BRNE       L__DIO_write127
	JMP        L_DIO_write37
L__DIO_write127:
;dio.c,86 :: 		if(value==LOW)
	LDI        R27, 0
	CP         R4, R27
	BREQ       L__DIO_write128
	JMP        L_DIO_write38
L__DIO_write128:
;dio.c,87 :: 		CLRB(PORTD,pin);
	MOV        R27, R3
	LDI        R16, 1
	TST        R27
	BREQ       L__DIO_write130
L__DIO_write129:
	LSL        R16
	DEC        R27
	BRNE       L__DIO_write129
L__DIO_write130:
	MOV        R17, R16
	COM        R17
	IN         R16, 50
	AND        R16, R17
	OUT        50, R16
	JMP        L_DIO_write39
L_DIO_write38:
;dio.c,88 :: 		else if(value==HIGH)
	LDI        R27, 1
	CP         R4, R27
	BREQ       L__DIO_write131
	JMP        L_DIO_write40
L__DIO_write131:
;dio.c,89 :: 		SETB(PORTD,pin);
	MOV        R27, R3
	LDI        R17, 1
	TST        R27
	BREQ       L__DIO_write133
L__DIO_write132:
	LSL        R17
	DEC        R27
	BRNE       L__DIO_write132
L__DIO_write133:
	IN         R16, 50
	OR         R16, R17
	OUT        50, R16
L_DIO_write40:
L_DIO_write39:
;dio.c,92 :: 		}
L_DIO_write37:
;dio.c,95 :: 		break;
	JMP        L_DIO_write20
;dio.c,96 :: 		default:
L_DIO_write41:
;dio.c,98 :: 		break;
	JMP        L_DIO_write20
;dio.c,99 :: 		}
L_DIO_write19:
	LDI        R27, 65
	CP         R2, R27
	BRNE       L__DIO_write134
	JMP        L_DIO_write21
L__DIO_write134:
	LDI        R27, 66
	CP         R2, R27
	BRNE       L__DIO_write135
	JMP        L_DIO_write26
L__DIO_write135:
	LDI        R27, 67
	CP         R2, R27
	BRNE       L__DIO_write136
	JMP        L_DIO_write31
L__DIO_write136:
	LDI        R27, 68
	CP         R2, R27
	BRNE       L__DIO_write137
	JMP        L_DIO_write36
L__DIO_write137:
	JMP        L_DIO_write41
L_DIO_write20:
;dio.c,101 :: 		}
L_end_DIO_write:
	RET
; end of _DIO_write

_DIO_read:

;dio.c,102 :: 		uint8_t DIO_read (uint8_t port , uint8_t pin){
;dio.c,103 :: 		switch(port){
	JMP        L_DIO_read42
;dio.c,104 :: 		case PORT_A:
L_DIO_read44:
;dio.c,105 :: 		return BITVAL(PINA,pin);
	MOV        R27, R3
	LDI        R18, 1
	LDI        R19, 0
	TST        R27
	BREQ       L__DIO_read140
L__DIO_read139:
	LSL        R18
	ROL        R19
	DEC        R27
	BRNE       L__DIO_read139
L__DIO_read140:
	IN         R16, 57
	LDI        R17, 0
	AND        R16, R18
	AND        R17, R19
	MOV        R27, R3
	TST        R27
	BREQ       L__DIO_read142
L__DIO_read141:
	ASR        R17
	ROR        R16
	DEC        R27
	BRNE       L__DIO_read141
L__DIO_read142:
	JMP        L_end_DIO_read
;dio.c,106 :: 		case PORT_B:
L_DIO_read45:
;dio.c,107 :: 		return BITVAL(PINB,pin);
	MOV        R27, R3
	LDI        R18, 1
	LDI        R19, 0
	TST        R27
	BREQ       L__DIO_read144
L__DIO_read143:
	LSL        R18
	ROL        R19
	DEC        R27
	BRNE       L__DIO_read143
L__DIO_read144:
	IN         R16, 54
	LDI        R17, 0
	AND        R16, R18
	AND        R17, R19
	MOV        R27, R3
	TST        R27
	BREQ       L__DIO_read146
L__DIO_read145:
	ASR        R17
	ROR        R16
	DEC        R27
	BRNE       L__DIO_read145
L__DIO_read146:
	JMP        L_end_DIO_read
;dio.c,108 :: 		case PORT_C:
L_DIO_read46:
;dio.c,109 :: 		return  BITVAL(PINC,pin);
	MOV        R27, R3
	LDI        R18, 1
	LDI        R19, 0
	TST        R27
	BREQ       L__DIO_read148
L__DIO_read147:
	LSL        R18
	ROL        R19
	DEC        R27
	BRNE       L__DIO_read147
L__DIO_read148:
	IN         R16, 51
	LDI        R17, 0
	AND        R16, R18
	AND        R17, R19
	MOV        R27, R3
	TST        R27
	BREQ       L__DIO_read150
L__DIO_read149:
	ASR        R17
	ROR        R16
	DEC        R27
	BRNE       L__DIO_read149
L__DIO_read150:
	JMP        L_end_DIO_read
;dio.c,110 :: 		case PORT_D:
L_DIO_read47:
;dio.c,111 :: 		return  BITVAL(PIND,pin);
	MOV        R27, R3
	LDI        R18, 1
	LDI        R19, 0
	TST        R27
	BREQ       L__DIO_read152
L__DIO_read151:
	LSL        R18
	ROL        R19
	DEC        R27
	BRNE       L__DIO_read151
L__DIO_read152:
	IN         R16, 48
	LDI        R17, 0
	AND        R16, R18
	AND        R17, R19
	MOV        R27, R3
	TST        R27
	BREQ       L__DIO_read154
L__DIO_read153:
	ASR        R17
	ROR        R16
	DEC        R27
	BRNE       L__DIO_read153
L__DIO_read154:
	JMP        L_end_DIO_read
;dio.c,112 :: 		default:
L_DIO_read48:
;dio.c,113 :: 		return -1; // Undefined port error handler
	LDI        R16, 255
	JMP        L_end_DIO_read
;dio.c,114 :: 		}
L_DIO_read42:
	LDI        R27, 65
	CP         R2, R27
	BRNE       L__DIO_read155
	JMP        L_DIO_read44
L__DIO_read155:
	LDI        R27, 66
	CP         R2, R27
	BRNE       L__DIO_read156
	JMP        L_DIO_read45
L__DIO_read156:
	LDI        R27, 67
	CP         R2, R27
	BRNE       L__DIO_read157
	JMP        L_DIO_read46
L__DIO_read157:
	LDI        R27, 68
	CP         R2, R27
	BRNE       L__DIO_read158
	JMP        L_DIO_read47
L__DIO_read158:
	JMP        L_DIO_read48
;dio.c,115 :: 		}
L_end_DIO_read:
	RET
; end of _DIO_read

_DIO_toggle:

;dio.c,116 :: 		void DIO_toggle (uint8_t port , uint8_t pin){
;dio.c,117 :: 		switch(port){
	JMP        L_DIO_toggle49
;dio.c,118 :: 		case PORT_A:
L_DIO_toggle51:
;dio.c,119 :: 		if( BITVAL(DDRA,pin) ){
	MOV        R27, R3
	LDI        R18, 1
	LDI        R19, 0
	TST        R27
	BREQ       L__DIO_toggle161
L__DIO_toggle160:
	LSL        R18
	ROL        R19
	DEC        R27
	BRNE       L__DIO_toggle160
L__DIO_toggle161:
	IN         R16, 58
	LDI        R17, 0
	AND        R16, R18
	AND        R17, R19
	MOV        R27, R3
	TST        R27
	BREQ       L__DIO_toggle163
L__DIO_toggle162:
	ASR        R17
	ROR        R16
	DEC        R27
	BRNE       L__DIO_toggle162
L__DIO_toggle163:
	MOV        R27, R16
	OR         R27, R17
	BRNE       L__DIO_toggle164
	JMP        L_DIO_toggle52
L__DIO_toggle164:
;dio.c,120 :: 		TOGGLEB(PORTA,pin);
	MOV        R27, R3
	LDI        R17, 1
	TST        R27
	BREQ       L__DIO_toggle166
L__DIO_toggle165:
	LSL        R17
	DEC        R27
	BRNE       L__DIO_toggle165
L__DIO_toggle166:
	IN         R16, 59
	EOR        R16, R17
	OUT        59, R16
;dio.c,121 :: 		}
L_DIO_toggle52:
;dio.c,124 :: 		break;
	JMP        L_DIO_toggle50
;dio.c,125 :: 		case PORT_B:
L_DIO_toggle53:
;dio.c,126 :: 		if( BITVAL(DDRB,pin) ){
	MOV        R27, R3
	LDI        R18, 1
	LDI        R19, 0
	TST        R27
	BREQ       L__DIO_toggle168
L__DIO_toggle167:
	LSL        R18
	ROL        R19
	DEC        R27
	BRNE       L__DIO_toggle167
L__DIO_toggle168:
	IN         R16, 55
	LDI        R17, 0
	AND        R16, R18
	AND        R17, R19
	MOV        R27, R3
	TST        R27
	BREQ       L__DIO_toggle170
L__DIO_toggle169:
	ASR        R17
	ROR        R16
	DEC        R27
	BRNE       L__DIO_toggle169
L__DIO_toggle170:
	MOV        R27, R16
	OR         R27, R17
	BRNE       L__DIO_toggle171
	JMP        L_DIO_toggle54
L__DIO_toggle171:
;dio.c,127 :: 		TOGGLEB(PORTB,pin);
	MOV        R27, R3
	LDI        R17, 1
	TST        R27
	BREQ       L__DIO_toggle173
L__DIO_toggle172:
	LSL        R17
	DEC        R27
	BRNE       L__DIO_toggle172
L__DIO_toggle173:
	IN         R16, 56
	EOR        R16, R17
	OUT        56, R16
;dio.c,128 :: 		}
L_DIO_toggle54:
;dio.c,131 :: 		break;
	JMP        L_DIO_toggle50
;dio.c,132 :: 		case PORT_C:
L_DIO_toggle55:
;dio.c,133 :: 		if( BITVAL(DDRC,pin) ){
	MOV        R27, R3
	LDI        R18, 1
	LDI        R19, 0
	TST        R27
	BREQ       L__DIO_toggle175
L__DIO_toggle174:
	LSL        R18
	ROL        R19
	DEC        R27
	BRNE       L__DIO_toggle174
L__DIO_toggle175:
	IN         R16, 52
	LDI        R17, 0
	AND        R16, R18
	AND        R17, R19
	MOV        R27, R3
	TST        R27
	BREQ       L__DIO_toggle177
L__DIO_toggle176:
	ASR        R17
	ROR        R16
	DEC        R27
	BRNE       L__DIO_toggle176
L__DIO_toggle177:
	MOV        R27, R16
	OR         R27, R17
	BRNE       L__DIO_toggle178
	JMP        L_DIO_toggle56
L__DIO_toggle178:
;dio.c,134 :: 		TOGGLEB(PORTC,pin);
	MOV        R27, R3
	LDI        R17, 1
	TST        R27
	BREQ       L__DIO_toggle180
L__DIO_toggle179:
	LSL        R17
	DEC        R27
	BRNE       L__DIO_toggle179
L__DIO_toggle180:
	IN         R16, 53
	EOR        R16, R17
	OUT        53, R16
;dio.c,135 :: 		}
L_DIO_toggle56:
;dio.c,138 :: 		break;
	JMP        L_DIO_toggle50
;dio.c,139 :: 		case PORT_D:
L_DIO_toggle57:
;dio.c,140 :: 		if( BITVAL(DDRD,pin) ){
	MOV        R27, R3
	LDI        R18, 1
	LDI        R19, 0
	TST        R27
	BREQ       L__DIO_toggle182
L__DIO_toggle181:
	LSL        R18
	ROL        R19
	DEC        R27
	BRNE       L__DIO_toggle181
L__DIO_toggle182:
	IN         R16, 49
	LDI        R17, 0
	AND        R16, R18
	AND        R17, R19
	MOV        R27, R3
	TST        R27
	BREQ       L__DIO_toggle184
L__DIO_toggle183:
	ASR        R17
	ROR        R16
	DEC        R27
	BRNE       L__DIO_toggle183
L__DIO_toggle184:
	MOV        R27, R16
	OR         R27, R17
	BRNE       L__DIO_toggle185
	JMP        L_DIO_toggle58
L__DIO_toggle185:
;dio.c,141 :: 		TOGGLEB(PORTD,pin);
	MOV        R27, R3
	LDI        R17, 1
	TST        R27
	BREQ       L__DIO_toggle187
L__DIO_toggle186:
	LSL        R17
	DEC        R27
	BRNE       L__DIO_toggle186
L__DIO_toggle187:
	IN         R16, 50
	EOR        R16, R17
	OUT        50, R16
;dio.c,142 :: 		}
L_DIO_toggle58:
;dio.c,145 :: 		break;
	JMP        L_DIO_toggle50
;dio.c,146 :: 		default:
L_DIO_toggle59:
;dio.c,148 :: 		break;
	JMP        L_DIO_toggle50
;dio.c,149 :: 		}
L_DIO_toggle49:
	LDI        R27, 65
	CP         R2, R27
	BRNE       L__DIO_toggle188
	JMP        L_DIO_toggle51
L__DIO_toggle188:
	LDI        R27, 66
	CP         R2, R27
	BRNE       L__DIO_toggle189
	JMP        L_DIO_toggle53
L__DIO_toggle189:
	LDI        R27, 67
	CP         R2, R27
	BRNE       L__DIO_toggle190
	JMP        L_DIO_toggle55
L__DIO_toggle190:
	LDI        R27, 68
	CP         R2, R27
	BRNE       L__DIO_toggle191
	JMP        L_DIO_toggle57
L__DIO_toggle191:
	JMP        L_DIO_toggle59
L_DIO_toggle50:
;dio.c,150 :: 		}
L_end_DIO_toggle:
	RET
; end of _DIO_toggle

dio____?ag:

L_end_dio___?ag:
	RET
; end of dio____?ag
