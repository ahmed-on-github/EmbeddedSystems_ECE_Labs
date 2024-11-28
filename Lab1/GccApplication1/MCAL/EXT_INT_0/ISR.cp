#line 1 "C:/Users/User/Desktop/Udacity_project_2_Incomplete/MCAL/EXT_INT_0/ISR.c"
#line 1 "c:/users/user/desktop/udacity_project_2_incomplete/mcal/ext_int_0/isr.h"
#line 1 "c:/users/user/desktop/udacity_project_2_incomplete/mcal/ext_int_0/../timer/timer.h"
#line 1 "c:/users/user/desktop/udacity_project_2_incomplete/mcal/ext_int_0/../timer/../../utility/reg.h"
#line 1 "c:/users/user/desktop/udacity_project_2_incomplete/mcal/ext_int_0/../timer/../../utility/int_types.h"


 typedef unsigned char uint8_t ;
 typedef unsigned short uint16_t;
 typedef unsigned long uint32_t;
 typedef unsigned long long uint64_t;
#line 1 "c:/users/user/desktop/udacity_project_2_incomplete/mcal/ext_int_0/../../eucal/led/led.h"
#line 1 "c:/users/user/desktop/udacity_project_2_incomplete/mcal/ext_int_0/../../eucal/led/../dio/dio.h"
#line 1 "c:/users/user/desktop/udacity_project_2_incomplete/mcal/ext_int_0/../../eucal/led/../dio/../../utility/reg.h"
#line 28 "c:/users/user/desktop/udacity_project_2_incomplete/mcal/ext_int_0/../../eucal/led/../dio/dio.h"
 void DIO_init (uint8_t port , uint8_t pin , uint8_t dir);
 void DIO_write (uint8_t port , uint8_t pin , uint8_t value);
 uint8_t DIO_read (uint8_t port , uint8_t pin);
 void DIO_toggle (uint8_t port , uint8_t pin);
#line 6 "c:/users/user/desktop/udacity_project_2_incomplete/mcal/ext_int_0/../../eucal/led/led.h"
 void LED_init(uint8_t port , uint8_t pin );
 void LED_on(uint8_t port , uint8_t pin );
 void LED_off(uint8_t port , uint8_t pin );
 void LED_toggle(uint8_t port , uint8_t pin );
 uint8_t LED_state(uint8_t port , uint8_t pin);
#line 1 "c:/users/user/desktop/udacity_project_2_incomplete/mcal/ext_int_0/../../eucal/button/button.h"
#line 1 "c:/users/user/desktop/udacity_project_2_incomplete/mcal/ext_int_0/../../eucal/button/../dio/dio.h"
#line 6 "c:/users/user/desktop/udacity_project_2_incomplete/mcal/ext_int_0/../../eucal/button/button.h"
 void button_init(uint8_t port , uint8_t pin);
 uint8_t button_read(uint8_t port , uint8_t pin);
#line 12 "c:/users/user/desktop/udacity_project_2_incomplete/mcal/ext_int_0/isr.h"
 void enable_interrupts();
 void disable_interrupts();
 char enable_ext_int(uint8_t _int_n );
 char disable_ext_int(uint8_t _int_n );
 char set_interrupt_sence( uint8_t _int_n , uint8_t trigger);
#line 3 "C:/Users/User/Desktop/Udacity_project_2_Incomplete/MCAL/EXT_INT_0/ISR.c"
uint8_t timer_stopped_flag =0;
#line 53 "C:/Users/User/Desktop/Udacity_project_2_Incomplete/MCAL/EXT_INT_0/ISR.c"
 void __vector_1 (void) __attribute__((signal,used)); void __vector_1 (void) {

  (*(volatile uint8_t*)0x52)  =0;
  (*(volatile uint8_t*)0x53)  = 0;
  (*(volatile uint8_t*)0x58)  |= (1<< 0 );
 timer_stopped_flag=1;

  (*(volatile uint8_t*)0x4C)  =  (*(volatile uint8_t*)0x4D)  = 0x00;
  (*(volatile uint8_t*)0x4F)  =  (*(volatile uint8_t*)0x4E)  = 0x00;
  (*(volatile uint8_t*)0x58)  |= (1<< 2 );
#line 72 "C:/Users/User/Desktop/Udacity_project_2_Incomplete/MCAL/EXT_INT_0/ISR.c"
 while( button_read( (*(volatile uint8_t *)0x30)  , 2) );

 disable_ext_int(0);
 __asm__ __volatile__ ("reti"::: "memory");
}

void enable_interrupts(){
  ( (*(volatile uint8_t *)0x5F) |=1<< 7 ) ;

 __asm__ __volatile__ ("sei"::: "memory");
}
void disable_interrupts(){
  ( (*(volatile uint8_t *)0x5F) &=~(1<< 7 )) ;

}
char enable_ext_int(uint8_t _int_n ){
 if(_int_n == (uint8_t)0)
  ( (*(volatile uint8_t *)0x5B) |=1<< 6 ) ;
 else if(_int_n == (uint8_t)1)
  ( (*(volatile uint8_t *)0x5B) |=1<< 7 ) ;
 else if(_int_n == (uint8_t)2)
  ( (*(volatile uint8_t *)0x5B) |=1<< 5 ) ;
 else
 return (char)-1;
 return 0;
}
char disable_ext_int(uint8_t _int_n ){
 if(_int_n == (uint8_t)0)
  ( (*(volatile uint8_t *)0x5B) &=~(1<< 6 )) ;
 else if(_int_n == (uint8_t)1)
  ( (*(volatile uint8_t *)0x5B) &=~(1<< 7 )) ;
 else if(_int_n == (uint8_t)2)
  ( (*(volatile uint8_t *)0x5B) &=~(1<< 5 )) ;
 else
 return (char)-1;
 return 0;
}

char set_interrupt_sence( uint8_t _int_n , uint8_t trigger){



 if(_int_n == (uint8_t)0){
 if(trigger>=0 && trigger<=3){
  ( (*(volatile uint8_t *)0x55) |=1<<0) ;
  ( (*(volatile uint8_t *)0x55) |=1<<1) ;
 }

 else
 return -1;
 }
 else if(_int_n == (uint8_t)1){
 if(trigger>=0 && trigger<=3)
  (*(volatile uint8_t *)0x55)  |= (trigger<< 2 );
 else
 return -1;
 }

 else if(_int_n == (uint8_t)2){
 if(trigger ==2)
  ( (*(volatile uint8_t *)0x54) &=~(1<< 6 )) ;
 else if(trigger ==3)
  ( (*(volatile uint8_t *)0x54) |=1<< 6 ) ;
 else
 return -1;
 }
 else
 return -1;
 return 0;
}
