
_button_init:

;button.c,3 :: 		void button_init(uint8_t port , uint8_t pin){
;button.c,4 :: 		DIO_init(port,pin,IN);
	PUSH       R4
	CLR        R4
	CALL       _DIO_init+0
;button.c,5 :: 		}
L_end_button_init:
	POP        R4
	RET
; end of _button_init

_button_read:

;button.c,6 :: 		uint8_t button_read(uint8_t port , uint8_t pin){
;button.c,7 :: 		return DIO_read(port,pin);
	CALL       _DIO_read+0
;button.c,8 :: 		}
L_end_button_read:
	RET
; end of _button_read

button____?ag:

L_end_button___?ag:
	RET
; end of button____?ag
