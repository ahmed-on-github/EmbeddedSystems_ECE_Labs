/*
 * IncFile1.h
 *
 * Created: 8/23/2023 10:39:02 AM
 *  Author: user
 */


#ifndef APP_H_
	#define APP_H_

    #include "../MCAL/EEPROM/eeprom.h"
	#include "../EUCAL/button/button.h"
	#include "../EUCAL/LED/LED.h"

    #ifndef F_CPU
    #define F_CPU 8000000UL
    #endif

	#define PORT__LOCK PORT_A

	#define LOCK_PORT	PORTA
	#define LOCK_DDR	DDRA
	#define LOCK_PIN	PINA

	#define SW0 0
	#define SW1 1
	#define SW2 2

	#define PORT__LED PORT_B

	#define LED_PORT    PORTB
	#define LED_DDR		DDRB
	#define LED_PIN		PINB

	#define LED_RED		0
	#define LED_GREEN	1
	#define LED_READY	2

	#define MAX_PASS_LEN (uint8_t)16

	void init(void);

	//#define BIG		(uint8_t)1
	//#define SMALL	(uint8_t)2
	void delay(uint8_t shift);

	// macros
//	#define enable_interrupts()		(SET_BIT(SREG,I))
//	#define disable_interrupts()	(CLR_BIT(SREG,I))





#endif /* APP_H_ */
