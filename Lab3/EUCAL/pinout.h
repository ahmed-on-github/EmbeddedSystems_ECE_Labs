/*
 * pinout.h
 *
 * Created: 8/25/2023 1:34:24 AM
 *  Author: Ahmed Ibrahim
 */ 

	
#ifndef PINOUT_H_
	#define PINOUT_H_
	
    /*For delays used in the IC modules*/
    #include "../device_config.h"
    
    #define IC_ResetPins() do{ PORTA = PORTB = 0x00; }while(0);
    
	typedef enum ICs{ Undefined_IC = 0x00/* 0 */,
        _4077 /* 1: quad 2 i/p xnor*/,
        _7485 /* 2:  4 bit comparator*/
    }ICs_t;

#endif /* PINOUT_H_ */