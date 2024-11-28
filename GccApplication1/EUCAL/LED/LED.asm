
_LED_init:

;LED.c,3 :: 		void LED_init(uint8_t port , uint8_t pin ){
;LED.c,4 :: 		DIO_init(port ,pin ,OUT);
	PUSH       R4
	LDI        R27, 1
	MOV        R4, R27
	CALL       _DIO_init+0
;LED.c,5 :: 		}
L_end_LED_init:
	POP        R4
	RET
; end of _LED_init

_LED_on:

;LED.c,6 :: 		void LED_on(uint8_t port , uint8_t pin ){
;LED.c,8 :: 		DIO_write(port,pin,HIGH);
	PUSH       R4
	LDI        R27, 1
	MOV        R4, R27
	CALL       _DIO_write+0
;LED.c,9 :: 		}
L_end_LED_on:
	POP        R4
	RET
; end of _LED_on

_LED_off:

;LED.c,10 :: 		void LED_off(uint8_t port , uint8_t pin ){
;LED.c,12 :: 		DIO_write(port,pin,LOW);
	PUSH       R4
	CLR        R4
	CALL       _DIO_write+0
;LED.c,13 :: 		}
L_end_LED_off:
	POP        R4
	RET
; end of _LED_off

_LED_toggle:

;LED.c,14 :: 		void LED_toggle(uint8_t port , uint8_t pin ){
;LED.c,16 :: 		DIO_toggle(port,pin);
	CALL       _DIO_toggle+0
;LED.c,17 :: 		}
L_end_LED_toggle:
	RET
; end of _LED_toggle

_LED_state:

;LED.c,18 :: 		uint8_t LED_state(uint8_t port , uint8_t pin){
;LED.c,20 :: 		return DIO_read(port,pin);
	CALL       _DIO_read+0
;LED.c,21 :: 		}
L_end_LED_state:
	RET
; end of _LED_state

LED____?ag:

L_end_LED___?ag:
	RET
; end of LED____?ag
