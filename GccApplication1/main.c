/*
 * main.c
 *
 * Created: 8/22/2023 5:17:09 AM
 * Author : users
 */ 

#include "app/app.h"
#include <util/delay.h>


int main(void){
    /* Replace with your application code */
	init();
	uint8_t sum = 0 ;
    
    while (1){
		if( button_read(BUTTON_PORT,BUTTON1)== (uint8_t)1 ){
			LED_on(LED_PORT,LED1);
			_delay_ms(1000);
		}
		/*else{
			LED_off(LED_PORT,LED1);
		}*/

		
		if( button_read(BUTTON_PORT,BUTTON2)==(uint8_t)1 ){
			LED_on(LED_PORT,LED2);
			_delay_ms(1000);
		}
		/*else{
			LED_off(LED_PORT,LED2);
		}*/
		
		if( button_read(BUTTON_PORT,BUTTON3)==(uint8_t)1 ){
			LED_on(LED_PORT,LED3);
			_delay_ms(1000);
		}
		/*else{
			LED_off(LED_PORT,LED3);
		}*/
		
		sum = LED_state(LED_PORT,LED1) + LED_state(LED_PORT,LED2) + LED_state(LED_PORT,LED3);
		
		if( sum > 0 ){
			
			if(sum==1){
				_delay_ms(2500);
			}
			else if(sum==2){
				_delay_ms(1500);
			}
			else if(sum==3){
				_delay_ms(500);
			}

			
			if( LED_state(LED_PORT,LED1) == 1){
				LED_off(LED_PORT,LED1);
			}
			if(LED_state(LED_PORT,LED2) == 1){
				LED_off(LED_PORT,LED2);
			}
			
			if(LED_state(LED_PORT,LED3) == 1){
				LED_off(LED_PORT,LED3);
			}
            _delay_ms(500);
		}	
    }
	return (uint8_t)0;
}

