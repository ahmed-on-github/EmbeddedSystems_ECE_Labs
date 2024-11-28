#include "LED.h"

void LED_init(uint8_t port , uint8_t pin ){
    DIO_init(port ,pin ,OUT);
}
void LED_on(uint8_t port , uint8_t pin ){
    //SETB(port , pin);
    DIO_write(port,pin,HIGH);
}
void LED_off(uint8_t port , uint8_t pin ){
    //CLRB(port , pin);
    DIO_write(port,pin,LOW);
}
void LED_toggle(uint8_t port , uint8_t pin ){
    //TOGGLEB(port , pin);
    DIO_toggle(port,pin);
}
uint8_t LED_state(uint8_t port , uint8_t pin){
    //return BITVAL(port,pin);
    return DIO_read(port,pin);
}
