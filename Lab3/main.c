/* 
 * File:   main.c
 * Author: Ahmed Ibrahim
 *
 * Created on November 30, 2024, 9:58 PM
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
/*Include app.h before delay.h so that it can see F_CPU defined in device_config.h*/
#include "App/app.h"
#include <util/delay.h>


const uint8_t IC_4077_smg [] = "IC 4077 is discovered and ok\r\n\0";
const uint8_t IC_7485_smg [] = "IC 7485 is discovered and ok\r\n\0";

volatile uint8_t *lastIC = NULL;
/*
 * 
 */
int main() {
    
	app_init();
	volatile ICs_t ic ;
    uint8_t uart_error;

    /* Periodically check the placed IC */
    while(1){
        while (1) {
            _delay_ms(500);

            ic = is_4077() ; // worked :)
            if( ic == _4077){
                if( lastIC != IC_4077_smg){
                    UART_SendString((uint8_t *)IC_4077_smg, &uart_error);
                    lastIC = (volatile uint8_t *)IC_4077_smg;
                    //memcpy();
                }
                PORTC = (uint8_t)_4077;
                break;
            }
            IC_ResetPins();

            ic = is_7485();
            if( ic== _7485){
                if( lastIC != IC_7485_smg){
                    UART_SendString((uint8_t *)IC_7485_smg, &uart_error);
                    lastIC = (volatile uint8_t *)IC_7485_smg;
                }
                PORTC = (uint8_t)_7485;
                break;
            }
            IC_ResetPins();
        }
    }
	return 0;
}

