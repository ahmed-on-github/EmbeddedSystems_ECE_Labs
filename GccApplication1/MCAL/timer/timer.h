#ifndef _TIMER_
    #define _TIMER_

    #include "../../utility/reg.h"
    #ifdef F_CPU
        #undef F_CPU
        #define F_CPU 1000000UL
    #endif // F_CPU

    #define DELAY_1_SEC TCNT0 = initial_val_0;\
                        for(i=0 ; i< n_overflow_0 ; i++){\
                            TCCR0 = 5;\
                            /* set prescaler =1024 : start timer */\
                            while( (TIFR&(1<<TOV0))==0 );\
                            /*stop timer*/ \
                            TCCR0 = 0;\
                            TIFR |= (1<<TOV0);\
                            if(timer_stopped_flag==1){ /*from extern isr 0*/\
                                timer_stopped_flag=0 ;\
                                break;\
                            }\
                            /*reload initial val*/\
                            TCNT0 = initial_val_0;\
                        }

    #define DELAY_5_SEC /*Start timer : prescaler  =256 */\
            TCNT1L = (uint8_t)initial_val_1;\
            TCNT1H = (uint8_t)((initial_val_1>>8)&0xFF);\
            TCCR1B = 4;\
            /*wait till timer 1 overflow flag is set*/\
            while( ( (TIFR&(1<<TOV1))>>TOV1 )==0 );\
            /*stop the timer*/\
            TCCR1B = 0x00;\
            TIFR |= (1<<TOV1);\

#endif // _TIMER_
