/*
 * app.c
 *
 * Created: 8/23/2023 10:38:55 AM
 *  Author: user
 */
#include "app.h"

void init(void){
	button_init(PORT__LOCK,SW0);
	button_init(PORT__LOCK,SW1);
	button_init(PORT__LOCK,SW2);
	// or : LOCK_DDR = 0x00 ; // input port

	LED_init(PORT__LED , LED_GREEN);
	LED_init(PORT__LED , LED_RED);
	LED_init(PORT__LED,LED_READY); //raedy to get into programming mode
	//or: LED_DDR  = 1<<LED_RED | 1<<LED_GREEN | 1<<LED_READY;

//	DDRC  = DDRD  =	0xFF; //output ports for debugging
//	PORTC = PORTD =	0x00; // initial values

	LED_on(PORT__LED, LED_READY); // indicate user is ready to create password

	//eeprom initializations : none
}
void delay(uint8_t shift){

	uint16_t i=0;
	while( i++ <  ((uint16_t)~0)>>(1&shift)   ); //some delay

}
