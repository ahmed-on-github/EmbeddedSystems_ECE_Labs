#ifndef __ISR__
    #define __ISR__

    #include "../timer/timer.h"
    #include "../../EUCAL/LED/LED.h"
    #include "../../EUCAL/button/button.h"

    #define EXT_INT_0 __vector_1
    #define ISR(INT_VECT) void INT_VECT(void) __attribute__((signal,used));\
                          void INT_VECT(void)

    void enable_interrupts();
    void disable_interrupts();
    char enable_ext_int(uint8_t _int_n );
    char disable_ext_int(uint8_t _int_n );
    char set_interrupt_sence( uint8_t _int_n , uint8_t trigger);


    // colors
    #define GREEN   0
    #define YELLOW  1
    #define RED     2

    //states
    #define CARS_MOVING     ((LED_state(PORT_A,GREEN)&LED_state(PORT_B,RED))==0x01) // or & only
    #define CARS_WILL_STOP  ((~(LED_state(PORT_A,GREEN)))&&(~(LED_state(PORT_B,GREEN)))&&(~(LED_state(PORT_A,RED)))&&(~(LED_state(PORT_B,RED))))
    #define CARS_STOPPED    ((LED_state(PORT_A,RED)&LED_state(PORT_B,GREEN))==0x01) // or & only

    #define START_CARS_WILL_STOP_STATE /*next state is : CARS_WILL_STOP*/\
                                        LED_off(PORT_A,GREEN);\
                                        LED_on(PORT_A,YELLOW);\
                                        LED_off(PORT_A,RED);\
                                        \
                                        LED_off(PORT_B,GREEN);\
                                        LED_on(PORT_B,YELLOW);\
                                        LED_off(PORT_B,RED);\
                                        \
                                        /*blinking_flag = 1; */ /* "CARS_WILL_STOP" state*/\
                                        for(j=0;j<5;j++){\
                                            DELAY_1_SEC\
                                            LED_toggle(PORT_A,YELLOW);\
                                            LED_toggle(PORT_B,YELLOW);\
                                        }
    #define START_CARS_STOPPED_STATE LED_off(PORT_A,GREEN);\
                                     LED_off(PORT_A,YELLOW);\
                                     LED_on(PORT_A,RED);\
                                     \
                                     LED_on(PORT_B,GREEN);\
                                     LED_off(PORT_B,YELLOW);\
                                     LED_off(PORT_B,RED);



    #define START_CARS_MOVING_STATE  LED_on(PORT_A,GREEN);\
                                     LED_off(PORT_A,YELLOW);\
                                     LED_off(PORT_A,RED);\
                                     \
                                     LED_off(PORT_B,GREEN);\
                                     LED_off(PORT_B,YELLOW);\
                                     LED_on(PORT_B,RED);
#endif // __ISR__
