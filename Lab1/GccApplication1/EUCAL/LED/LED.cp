#line 1 "C:/Users/User/Desktop/Udacity_project_2_Incomplete/EUCAL/LED/LED.c"
#line 1 "c:/users/user/desktop/udacity_project_2_incomplete/eucal/led/led.h"
#line 1 "c:/users/user/desktop/udacity_project_2_incomplete/eucal/led/../dio/dio.h"
#line 1 "c:/users/user/desktop/udacity_project_2_incomplete/eucal/led/../dio/../../utility/reg.h"
#line 1 "c:/users/user/desktop/udacity_project_2_incomplete/eucal/led/../dio/../../utility/int_types.h"


 typedef unsigned char uint8_t ;
 typedef unsigned short uint16_t;
 typedef unsigned long uint32_t;
 typedef unsigned long long uint64_t;
#line 28 "c:/users/user/desktop/udacity_project_2_incomplete/eucal/led/../dio/dio.h"
 void DIO_init (uint8_t port , uint8_t pin , uint8_t dir);
 void DIO_write (uint8_t port , uint8_t pin , uint8_t value);
 uint8_t DIO_read (uint8_t port , uint8_t pin);
 void DIO_toggle (uint8_t port , uint8_t pin);
#line 6 "c:/users/user/desktop/udacity_project_2_incomplete/eucal/led/led.h"
 void LED_init(uint8_t port , uint8_t pin );
 void LED_on(uint8_t port , uint8_t pin );
 void LED_off(uint8_t port , uint8_t pin );
 void LED_toggle(uint8_t port , uint8_t pin );
 uint8_t LED_state(uint8_t port , uint8_t pin);
#line 3 "C:/Users/User/Desktop/Udacity_project_2_Incomplete/EUCAL/LED/LED.c"
void LED_init(uint8_t port , uint8_t pin ){
 DIO_init(port ,pin , 1 );
}
void LED_on(uint8_t port , uint8_t pin ){

 DIO_write(port,pin, 1 );
}
void LED_off(uint8_t port , uint8_t pin ){

 DIO_write(port,pin, 0 );
}
void LED_toggle(uint8_t port , uint8_t pin ){

 DIO_toggle(port,pin);
}
uint8_t LED_state(uint8_t port , uint8_t pin){

 return DIO_read(port,pin);
}
