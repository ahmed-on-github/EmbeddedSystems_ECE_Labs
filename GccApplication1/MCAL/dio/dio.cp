#line 1 "C:/Users/User/Desktop/Udacity_project_2_Incomplete/EUCAL/dio/dio.c"
#line 1 "c:/users/user/desktop/udacity_project_2_incomplete/eucal/dio/dio.h"
#line 1 "c:/users/user/desktop/udacity_project_2_incomplete/eucal/dio/../../utility/reg.h"
#line 1 "c:/users/user/desktop/udacity_project_2_incomplete/eucal/dio/../../utility/int_types.h"


 typedef unsigned char uint8_t ;
 typedef unsigned short uint16_t;
 typedef unsigned long uint32_t;
 typedef unsigned long long uint64_t;
#line 28 "c:/users/user/desktop/udacity_project_2_incomplete/eucal/dio/dio.h"
 void DIO_init (uint8_t port , uint8_t pin , uint8_t dir);
 void DIO_write (uint8_t port , uint8_t pin , uint8_t value);
 uint8_t DIO_read (uint8_t port , uint8_t pin);
 void DIO_toggle (uint8_t port , uint8_t pin);
#line 4 "C:/Users/User/Desktop/Udacity_project_2_Incomplete/EUCAL/dio/dio.c"
void DIO_init (uint8_t port , uint8_t pin , uint8_t dir){
 switch(port){
 case  'A' :
 if(dir== 0 )
  ( (*(volatile uint8_t *)0x3A) &=~(1<<pin)) ;
 else if(dir== 1 )
  ( (*(volatile uint8_t *)0x3A) |=1<<pin) ;


 break;
 case  'B' :
 if(dir== 0 )
  ( (*(volatile uint8_t *)0x37) &=~(1<<pin)) ;
 else if(dir== 1 )
  ( (*(volatile uint8_t *)0x37) |=1<<pin) ;



 break;
 case  'C' :
 if(dir== 0 )
  ( (*(volatile uint8_t *)0x34) &=~(1<<pin)) ;
 else if(dir== 1 )
  ( (*(volatile uint8_t *)0x34) |=1<<pin) ;



 break;
 case  'D' :
 if(dir== 0 )
  ( (*(volatile uint8_t *)0x31) &=~(1<<pin)) ;
 else if(dir== 1 )
  ( (*(volatile uint8_t *)0x31) |=1<<pin) ;


 break;
 default:

 break;
 }
}
void DIO_write (uint8_t port , uint8_t pin , uint8_t value){
 switch(port){
 case  'A' :
 if(  (( (*(volatile uint8_t *)0x3A) &(1<<pin))>>pin)  ){
 if(value== 0 )
  ( (*(volatile uint8_t *)0x3B) &=~(1<<pin)) ;
 else if(value== 1 )
  ( (*(volatile uint8_t *)0x3B) |=1<<pin) ;


 }


 break;
 case  'B' :
 if(  (( (*(volatile uint8_t *)0x37) &(1<<pin))>>pin)  ){
 if(value== 0 )
  ( (*(volatile uint8_t *)0x38) &=~(1<<pin)) ;
 else if(value== 1 )
  ( (*(volatile uint8_t *)0x38) |=1<<pin) ;


 }


 break;
 case  'C' :
 if(  (( (*(volatile uint8_t *)0x34) &(1<<pin))>>pin)  ){
 if(value== 0 )
  ( (*(volatile uint8_t *)0x35) &=~(1<<pin)) ;
 else if(value== 1 )
  ( (*(volatile uint8_t *)0x35) |=1<<pin) ;


 }



 break;
 case  'D' :
 if(  (( (*(volatile uint8_t *)0x34) &(1<<pin))>>pin)  ){
 if(value== 0 )
  ( (*(volatile uint8_t *)0x32) &=~(1<<pin)) ;
 else if(value== 1 )
  ( (*(volatile uint8_t *)0x32) |=1<<pin) ;


 }


 break;
 default:

 break;
 }

}
uint8_t DIO_read (uint8_t port , uint8_t pin){
 switch(port){
 case  'A' :
 return  (( (*(volatile uint8_t *)0x39) &(1<<pin))>>pin) ;
 case  'B' :
 return  (( (*(volatile uint8_t *)0x36) &(1<<pin))>>pin) ;
 case  'C' :
 return  (( (*(volatile uint8_t *)0x33) &(1<<pin))>>pin) ;
 case  'D' :
 return  (( (*(volatile uint8_t *)0x30) &(1<<pin))>>pin) ;
 default:
 return -1;
 }
}
void DIO_toggle (uint8_t port , uint8_t pin){
 switch(port){
 case  'A' :
 if(  (( (*(volatile uint8_t *)0x3A) &(1<<pin))>>pin)  ){
  ( (*(volatile uint8_t *)0x3B) ^=1<<pin) ;
 }


 break;
 case  'B' :
 if(  (( (*(volatile uint8_t *)0x37) &(1<<pin))>>pin)  ){
  ( (*(volatile uint8_t *)0x38) ^=1<<pin) ;
 }


 break;
 case  'C' :
 if(  (( (*(volatile uint8_t *)0x34) &(1<<pin))>>pin)  ){
  ( (*(volatile uint8_t *)0x35) ^=1<<pin) ;
 }


 break;
 case  'D' :
 if(  (( (*(volatile uint8_t *)0x31) &(1<<pin))>>pin)  ){
  ( (*(volatile uint8_t *)0x32) ^=1<<pin) ;
 }


 break;
 default:

 break;
 }
}
