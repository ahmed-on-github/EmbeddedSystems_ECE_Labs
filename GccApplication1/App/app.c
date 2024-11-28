/*
 * app.c
 *
 * Created: 8/22/2023 5:35:41 AM
 *  Author: user
 */ 
#include "app.h"

void init(void){
	button_init('A',BUTTON1);
	button_init('A',BUTTON2);
	button_init('A',BUTTON3);
	
	LED_init('B',LED1);
	LED_init('B',LED2);
	LED_init('B',LED3);
}
