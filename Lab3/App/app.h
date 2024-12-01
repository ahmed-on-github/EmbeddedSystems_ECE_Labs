/*
 * app.h
 *
 * Created: 8/25/2023 7:11:56 PM
 *  Author: Ahmed Ibrahim
 */ 


#ifndef APP_H_
	#define APP_H_
	
	#include "../EUCAL/xnor.h"
	#include "../EUCAL/comparator_4bit.h"
    //include other ic headers
    
    #include "../MCAL/uart/uart.h"
    
    #define IC_DUBUG_INIT() do{ PINC = 0xFF; /* o/p for debugging*/ PORTC = 0x00; /*initial val */}while(0);
    #define app_init() do { UART_Init(); IC_DUBUG_INIT(); }while(0);
    
    
	
	





#endif /* APP_H_ */