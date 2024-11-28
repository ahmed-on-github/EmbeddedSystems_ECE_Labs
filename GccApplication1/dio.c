#include "dio.h"

// functions' Definitions
void DIO_init (uint8_t port , uint8_t pin , uint8_t dir){
    switch(port){
        case PORT_A:
             if(dir==IN)
                CLR_BIT
				(DDRA,pin);
             else if(dir==OUT)
                SET_BIT(DDRA,pin);
             //else
                // Undefined direction Error handler
        break;
        case PORT_B:
            if(dir==IN)
                CLR_BIT(DDRB,pin);
             else if(dir==OUT)
                SET_BIT(DDRB,pin);
             //else
                // Undefined direction Error handler

        break;
        case PORT_C:
            if(dir==IN)
                CLR_BIT(DDRC,pin);
             else if(dir==OUT)
                SET_BIT(DDRC,pin);
             //else
                // Undefined direction Error handler

        break;
        case PORT_D:
            if(dir==IN)
                CLR_BIT(DDRD,pin);
             else if(dir==OUT)
                SET_BIT(DDRD,pin);
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
            if( BIT_VAL(DDRA,pin) ){
                if(value==LOW)
                    CLR_BIT(PORTA,pin);
                else if(value==HIGH)
                    SET_BIT(PORTA,pin);
                //else
                    // Undefined value Error handler
             }
             //else
                // pin is not an output pin
        break;
        case PORT_B:
            if( BIT_VAL(DDRB,pin) ){
                if(value==LOW)
                    CLR_BIT(PORTB,pin);
                 else if(value==HIGH)
                    SET_BIT(PORTB,pin);
                 //else
                    // Undefined value Error handler
             }
            //else
                // pin is not an output pin
        break;
        case PORT_C:
            if( BIT_VAL(DDRC,pin) ){
                if(value==LOW)
                    CLR_BIT(PORTC,pin);
                 else if(value==HIGH)
                    SET_BIT(PORTC,pin);
                 //else
                    // Undefined value Error handler
            }
            //else
                // pin is not an output pin

        break;
        case PORT_D:
            if( BIT_VAL(DDRC,pin) ){
                if(value==LOW)
                    CLR_BIT(PORTD,pin);
                 else if(value==HIGH)
                    SET_BIT(PORTD,pin);
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
             return BIT_VAL(PINA,pin);
        case PORT_B:
            return BIT_VAL(PINB,pin);
        case PORT_C:
            return  BIT_VAL(PINC,pin);
        case PORT_D:
            return  BIT_VAL(PIND,pin);
        default:
            return -1; // Undefined port error handler
    }
}
void DIO_toggle (uint8_t port , uint8_t pin){
    switch(port){
        case PORT_A:
            if( BIT_VAL(DDRA,pin) ){
               TOGGLE_BIT(PORTA,pin);
             }
            //else
                // pin is not an output pin
        break;
        case PORT_B:
            if( BIT_VAL(DDRB,pin) ){
               TOGGLE_BIT(PORTB,pin);
             }
            //else
                // pin is not an output pin
        break;
        case PORT_C:
            if( BIT_VAL(DDRC,pin) ){
               TOGGLE_BIT(PORTC,pin);
             }
            //else
                // pin is not an output pin
        break;
        case PORT_D:
             if( BIT_VAL(DDRD,pin) ){
               TOGGLE_BIT(PORTD,pin);
             }
            //else
                // pin is not an output pin
        break;
        default:
            // Undefined port error handler
        break;
    }
}
