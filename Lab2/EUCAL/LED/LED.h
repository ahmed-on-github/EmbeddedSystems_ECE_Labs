#ifndef _LED_
    #define _LED_

    #include "../../MCAL/dio/dio.h"

    void LED_init(uint8_t port , uint8_t pin );
    void LED_on(uint8_t port , uint8_t pin );
    void LED_off(uint8_t port , uint8_t pin );
    void LED_toggle(uint8_t port , uint8_t pin );
    uint8_t LED_state(uint8_t port , uint8_t pin);
#endif // _LED_

