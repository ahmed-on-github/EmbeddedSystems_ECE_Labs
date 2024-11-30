#include "button.h"

void button_init(uint8_t port , uint8_t pin){
    DIO_init(port,pin,IN);
}
uint8_t button_read(uint8_t port , uint8_t pin){
    return DIO_read(port,pin);
}
