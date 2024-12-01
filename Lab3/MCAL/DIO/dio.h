#ifndef _DIO_
	#define _DIO_

    #include "../../utility/reg.h"
    #include "../../utility/bit_math.h"

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

    // functions' prototypes
    void DIO_init (uint8_t port , uint8_t pin , uint8_t dir);
    void DIO_write (uint8_t port , uint8_t pin , uint8_t value);
    uint8_t DIO_read (uint8_t port , uint8_t pin);
    void DIO_toggle (uint8_t port , uint8_t pin);

#endif

