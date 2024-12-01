/*
 * comparator_4bit.c
 *
 * Created: 8/25/2023 9:13:15 PM
 *  Author: user
  

					PORTA  pin# 	_____________ _____________		   pin#	 PORTB
					0		1	B3	|1(in)		 O		(in)16|	  Vcc   16	 7
									|						  |
					1		2	_	|2(__)				(in)15|   A3    15	 6
									|						  |
					2		3	_	|3(__)				(in)14|	  B2    14	 5
									|						  |
					3		4	_	|4(__)			   (in) 13|	  A2    13	 4
									|						  |
					4		5	A>B	|5(out)			   (in) 12|	  A1	12	 3
									|						  |
					5		6	A=B	|6(out)				(in)11|	  B1	11	 2
									|						  |
					6		7	A<B	|7(out)			    (in)10|   A0	10	 1
									|						  |	
					7		8	GND	|8(in)				(in) 9|	  B0	9    0
									|__________7485___________|
 */
#include "comparator_4bit.h"
#include <util/delay.h>

void init_7485(void){
	
	DIO_init(PORT_A,B3_7485 -1 , OUT);		//pin 1
	
	DIO_init(PORT_A,A_gt_B_7485 -1 , IN);	//pin 5
	DIO_init(PORT_A,A_eq_B_7485 -1 , IN);	//pin 6
	DIO_init(PORT_A,A_lt_B_7485 -1 , IN);	//pin 7
	
	DIO_init(PORT_A,GND_7485 -1 , OUT);		//pin 8
	
	//port b
	
	DIO_init(PORT_B,B0_7485 -9 , OUT);	//pin 9
	DIO_init(PORT_B,A0_7485 -9 , OUT);	//pin 10
	DIO_init(PORT_B,B1_7485 -9 , OUT);	//pin 11
	DIO_init(PORT_B,A1_7485 -9 , OUT);	//pin 12
	DIO_init(PORT_B,A2_7485 -9 , OUT);	//pin 13
	DIO_init(PORT_B,B2_7485 -9 , OUT);	//pin 14
	DIO_init(PORT_B,A3_7485 -9 , OUT);	//pin 15
	DIO_init(PORT_B,VCC_7485 -9 , OUT);	//pin 16
	
}

uint8_t is_7485(void){
	
	init_7485();
	
	DIO_write(PORT_A,GND_7485 -1 , LOW);
	DIO_write(PORT_B,VCC_7485 -9 , HIGH);		
	
	uint8_t i = 0; //truth_table iterator
	uint8_t Ax,Bx;
	while(1){
		
		Ax = i & 0x0F ; 
		Bx = (i & 0xF0)>>4 ;
		
		// A's 4 bits
		DIO_write(PORT_B, A0_7485 -9, (Ax & 0x01) );
		DIO_write(PORT_B, A1_7485 -9 , (Ax & 0x02)>>1 );
		DIO_write(PORT_B, A2_7485 -9 , (Ax & 0x04)>>2 );
		DIO_write(PORT_B, A3_7485 -9 , (Ax & 0x08)>>3 );
	
		//B's 4 bits
		DIO_write(PORT_B, B0_7485 -9 , (Bx & 0x01) );
		DIO_write(PORT_B, B1_7485 -9 , (Bx & 0x02)>>1 );
		DIO_write(PORT_B, B2_7485 -9 , (Bx & 0x04)>>2 );
		DIO_write(PORT_A, B3_7485 -1 , (Bx & 0x08)>>3 );
		
        /*Wait for the IC internal delays before reading its output pins*/
        _delay_ms(2.0);
        
		if( Ax == Bx ){
			if( DIO_read(PORT_A,A_gt_B_7485 -1)!=0 \
			||	DIO_read(PORT_A,A_eq_B_7485 -1)!=1 \
			||  DIO_read(PORT_A,A_lt_B_7485 -1)!=0 ){
				return Undefined_IC;
			}
		}
		else if( Ax > Bx ){
			if( DIO_read(PORT_A,A_gt_B_7485 -1)!=1 \
			||	DIO_read(PORT_A,A_eq_B_7485 -1)!=0 \
			||  DIO_read(PORT_A,A_lt_B_7485 -1)!=0 ){
				return Undefined_IC;
			}
		}
		else{ // Ax < Bx
			if( DIO_read(PORT_A,A_gt_B_7485 -1)!=0 \
			||	DIO_read(PORT_A,A_eq_B_7485 -1)!=0 \
			||  DIO_read(PORT_A,A_lt_B_7485 -1)!=1 ){
				return Undefined_IC;
			}
		}
		
		if(i == 0xFF)
			break;
		i++;	
	}
	return _7485;
	
}