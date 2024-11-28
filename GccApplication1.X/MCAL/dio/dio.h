#ifndef _DIO_
	#define _DIO_

    #include "../../utility/reg.h"

    // port names :
    #define PORT_A 'A'
    #define PORT_B 'B'
    #define PORT_C 'C'
    #define PORT_D 'D'

    // Values :
    #define LOW 0
    #define HIGH 1

    //directions
    #define IN 0
    #define OUT 1

    // BIT MANIPULATIONS

    #define SET_BIT(PORT,PIN) (PORT|=1<<PIN)
    #define CLR_BIT(PORT,PIN) (PORT&=~(1<<PIN))
    #define TOGGLE_BIT(PORT,PIN) (PORT^=1<<PIN)
    #define BIT_VAL(PORT,PIN) ((PORT&(1<<PIN))>>PIN)

    // functions' prototypes
    void DIO_init (uint8_t port , uint8_t pin , uint8_t dir);
    void DIO_write (uint8_t port , uint8_t pin , uint8_t value);
    uint8_t DIO_read (uint8_t port , uint8_t pin);
    void DIO_toggle (uint8_t port , uint8_t pin);

#endif

