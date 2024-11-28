#include "dio.h"

// functions' Definitions
void DIO_init (uint8_t port , uint8_t pin , uint8_t dir){
    switch(port){
        case PORT_A:
             if(dir==IN)
                CLRB(DDRA,pin);
             else if(dir==OUT)
                SETB(DDRA,pin);
             //else
                // Undefined direction Error handler
        break;
        case PORT_B:
            if(dir==IN)
                CLRB(DDRB,pin);
             else if(dir==OUT)
                SETB(DDRB,pin);
             //else
                // Undefined direction Error handler

        break;
        case PORT_C:
            if(dir==IN)
                CLRB(DDRC,pin);
             else if(dir==OUT)
                SETB(DDRC,pin);
             //else
                // Undefined direction Error handler

        break;
        case PORT_D:
            if(dir==IN)
                CLRB(DDRD,pin);
             else if(dir==OUT)
                SETB(DDRD,pin);
             //else
                // // Undefined direction Error handler
        break;
        default:
            // Undefined port error handler
        break;
    }
}
void DIO_write (uint8_t port , uint8_t pin , uint8_t value){
        switch(port){
        case PORT_A:
            if( BITVAL(DDRA,pin) ){
                if(value==LOW)
                    CLRB(PORTA,pin);
                else if(value==HIGH)
                    SETB(PORTA,pin);
                //else
                    // Undefined value Error handler
             }
             //else
                // pin is not an output pin
        break;
        case PORT_B:
            if( BITVAL(DDRB,pin) ){
                if(value==LOW)
                    CLRB(PORTB,pin);
                 else if(value==HIGH)
                    SETB(PORTB,pin);
                 //else
                    // Undefined value Error handler
             }
            //else
                // pin is not an output pin
        break;
        case PORT_C:
            if( BITVAL(DDRC,pin) ){
                if(value==LOW)
                    CLRB(PORTC,pin);
                 else if(value==HIGH)
                    SETB(PORTC,pin);
                 //else
                    // Undefined value Error handler
            }
            //else
                // pin is not an output pin

        break;
        case PORT_D:
            if( BITVAL(DDRC,pin) ){
                if(value==LOW)
                    CLRB(PORTD,pin);
                 else if(value==HIGH)
                    SETB(PORTD,pin);
                 //else
                    // // Undefined value Error handler
             }
            //else
                // pin is not an output pin
        break;
        default:
            // Undefined port error handler
        break;
    }

}
uint8_t DIO_read (uint8_t port , uint8_t pin){
    switch(port){
        case PORT_A:
             return BITVAL(PINA,pin);
        case PORT_B:
            return BITVAL(PINB,pin);
        case PORT_C:
            return  BITVAL(PINC,pin);
        case PORT_D:
            return  BITVAL(PIND,pin);
        default:
            return -1; // Undefined port error handler
    }
}
void DIO_toggle (uint8_t port , uint8_t pin){
    switch(port){
        case PORT_A:
            if( BITVAL(DDRA,pin) ){
               TOGGLEB(PORTA,pin);
             }
            //else
                // pin is not an output pin
        break;
        case PORT_B:
            if( BITVAL(DDRB,pin) ){
               TOGGLEB(PORTB,pin);
             }
            //else
                // pin is not an output pin
        break;
        case PORT_C:
            if( BITVAL(DDRC,pin) ){
               TOGGLEB(PORTC,pin);
             }
            //else
                // pin is not an output pin
        break;
        case PORT_D:
             if( BITVAL(DDRD,pin) ){
               TOGGLEB(PORTD,pin);
             }
            //else
                // pin is not an output pin
        break;
        default:
            // Undefined port error handler
        break;
    }
}
