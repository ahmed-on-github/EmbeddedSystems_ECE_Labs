#include "ISR.h"

uint8_t timer_stopped_flag =0;

/*ISR(EXT_INT_0){
    if(CARS_MOVING){
//       // set TOV1 flag manually
//       TIFR |= (1<<TOV1);
//       // stop timer 1
//       TCCR1A = TCCR1B = 0x00;
//       // change lights to yellow , how ? change lights to its prev. state
//       // in this case , do nothing about the timer
        LED_off(PORT_A,GREEN);
        LED_on(PORT_A,YELLOW);
        LED_off(PORT_A,RED);

        LED_off(PORT_B,GREEN);
        LED_on(PORT_B,YELLOW);
        LED_off(PORT_B,RED);
    }
    //else if(CARS_WILL_STOP){ // do nothing
//       //stop timer 0
//       TCCR0 = 0x00;
//       // set TOV0 flag manually
//       TIFR |= (1<<TOV0);
//       timer_stopped_flag=1;
//       //no lights change


    //}
    else if(CARS_STOPPED){
        // change lights to yellow , how ? change lights to its prev. state
        // in this case , toggle led and green lights
        LED_off(PORT_A,GREEN);
        LED_on(PORT_A,YELLOW);
        LED_off(PORT_A,RED);

        LED_off(PORT_B,GREEN);
        LED_on(PORT_B,YELLOW);
        LED_off(PORT_B,RED);
    }
    //wait till button is released
    while( button_read(PIND , 2) );
    //disable the external interrupt ,
    //so that button bouncing
    //does not latch another
    //ISR call
    disable_ext_int(0);
    //then enable it in the while(1){}
} */


ISR(EXT_INT_0){
    // stop timer 0
    TCNT0 =0;
    TCCR0 = 0;
    TIFR |= (1<<TOV0);
    timer_stopped_flag=1;
    // stop timer 1
    TCNT1L = TCNT1H = 0x00;
    TCCR1A = TCCR1B = 0x00;
    TIFR |= (1<<TOV1);
    //turn off all leds
    /*uint8_t i;
    for (i=0;i<3;i++){
        LED_off(PORT_A,i);
        LED_off(PORT_B,i);
    }
    timer_stopped_flag =0; */

    //wait till button is released
    while( button_read(PIND , 2) );
    // to ignore the latched ISR calls
    disable_ext_int(0);
    __asm__ __volatile__ ("reti"::: "memory");
}

void enable_interrupts(){
    SETB(SREG,I);
    // sei(); // needs another inclusion of avr/interrupt.h
     __asm__ __volatile__ ("sei"::: "memory");
}
void disable_interrupts(){
    CLRB(SREG,I);

}
char enable_ext_int(uint8_t _int_n ){
    if(_int_n == (uint8_t)0)
        SETB(GICR,INT0);
    else if(_int_n == (uint8_t)1)
        SETB(GICR,INT1);
    else if(_int_n == (uint8_t)2)
        SETB(GICR,INT2);
    else
        return (char)-1;
    return 0;
}
char disable_ext_int(uint8_t _int_n ){
    if(_int_n == (uint8_t)0)
        CLRB(GICR,INT0);
    else if(_int_n == (uint8_t)1)
        CLRB(GICR,INT1);
    else if(_int_n == (uint8_t)2)
        CLRB(GICR,INT2);
    else
        return (char)-1;
    return 0;
}
//interrupt sensation level
char set_interrupt_sence( uint8_t _int_n , uint8_t trigger){ // trigger = 0 : low level
                                                            //          = 1 : any logic change
                                                           //           = 2 : -ve edge
                                                          //            = 3 : +ve edge
    if(_int_n == (uint8_t)0){
        if(trigger>=0 && trigger<=3){
            SETB(MCUCR,0);
            SETB(MCUCR,1);
        }
            //MCUCR |= (trigger&0xFF);
        else
            return -1;
    }
    else if(_int_n == (uint8_t)1){
        if(trigger>=0 && trigger<=3)
            MCUCR |= (trigger<<ISC10);
         else
            return -1;
    }

    else if(_int_n == (uint8_t)2){
        if(trigger ==2)
            CLRB(MCUCSR,ISC2);
        else if(trigger ==3)
            SETB(MCUCSR,ISC2);
        else
            return -1;
    }
    else
        return -1;
    return 0;
}
