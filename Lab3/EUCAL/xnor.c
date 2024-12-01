/*
 * xnor.c
 *
 * Created: 8/25/2023 1:17:23 AM
 *  Author: user
 */ 
#include "xnor.h"
#include <util/delay.h>

void init_4077(void){
	
	// pins 1-7 connected to PORTA 
	DIO_init(PORT_A , in1_1_4077 -1 , OUT);
	DIO_init(PORT_A , in1_2_4077 -1 , OUT);
	DIO_init(PORT_A , out_1_4077 -1 , IN);
	
	DIO_init(PORT_A , out_2_4077 -1 , IN);
	DIO_init(PORT_A , in2_1_4077 -1 , OUT);
	DIO_init(PORT_A , in2_2_4077 -1 , OUT);
	
	DIO_init(PORT_A , GND_4077 -1 , OUT);
	
	// pins 8-14 connected to portB
	DIO_init(PORT_B , in3_1_4077 -7 , OUT);
	DIO_init(PORT_B , in3_2_4077 -7 , OUT);
	DIO_init(PORT_B , out_3_4077 -7 , IN);
	
	DIO_init(PORT_B , out_4_4077 -7 , IN);
	DIO_init(PORT_B , in4_1_4077 -7 , OUT);
	DIO_init(PORT_B , in4_2_4077 -7 , OUT);
	
	DIO_init(PORT_B , VCC_4077 -7 , OUT);
}
uint8_t is_4077(void){
	/* truth table: 
		_______________
		|Ax |  Bx | Ox |
		|--------------|
	0	|0	   0    1  |
	1	|0	   1	 0  |
	2	|1     0    0  |
	3	|1     1    1  |
		________________
	*/
	init_4077();
	
	DIO_write(PORT_A,GND_4077-1,LOW);
	DIO_write(PORT_B,VCC_4077-7,HIGH);
	
	uint8_t i=0;
	uint8_t Ax,Bx,Ox;
	for(i=0;i<4;i++){
        
		//notice the truth table
		Ax = (i & 0x2 /* or 1<<1 */)>>1 ; Bx =(i & 0x01/* or 1<<0 */);
		
		// assign values to input ports of IC
		DIO_write( PORT_A , in1_1_4077 -1  , Ax);
		DIO_write( PORT_A , in2_1_4077 -1  , Ax);
		DIO_write( PORT_B , in3_1_4077 -7  , Ax);
		DIO_write( PORT_B , in4_1_4077 -7  , Ax);
		
		DIO_write( PORT_A , in1_2_4077 -1  , Bx);
		DIO_write( PORT_A , in2_2_4077 -1  , Bx);
		DIO_write( PORT_B , in3_2_4077 -7  , Bx);
		DIO_write( PORT_B , in4_2_4077 -7  , Bx);
		
		//Ox is just 0 or 1
		Ox = ((!Ax)&&(!Bx)) || (Ax&&Bx) ;  // xnor(A,B) = a_bar.b_bar + a.b
		
        /*Wait for the IC internal delays before reading its output pins*/
        _delay_ms(2.0);
		if (	DIO_read(PORT_A, out_1_4077 -1 )!= Ox \
			||	DIO_read(PORT_A, out_2_4077 -1 )!= Ox \
			||	DIO_read(PORT_B, out_3_4077 -7 )!= Ox \
			||	DIO_read(PORT_B, out_4_4077 -7 )!= Ox /*DIO_read returns 0,1 and -1 */
			){
				return Undefined_IC ;
			} 
		//delay(1.5f)	;
	}
	return (uint8_t)_4077;
}
