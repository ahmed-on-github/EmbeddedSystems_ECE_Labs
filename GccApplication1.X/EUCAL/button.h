#ifndef _BUTTON_
    #define _BUTTON_

    #include "../dio/dio.h"

    void button_init(uint8_t port , uint8_t pin);
    uint8_t button_read(uint8_t port , uint8_t pin);
#endif // _BUTTON_
