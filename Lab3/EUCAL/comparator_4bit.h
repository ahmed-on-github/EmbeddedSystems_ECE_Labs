/*
 * comparator_4bit.h
 *
 * Created: 8/25/2023 8:03:29 PM
 *  Author: Ahmed Ibrahim
					PORTA  pin# 	_____________ ___________		   pin#	 PORTB
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




#ifndef COMPARATOR_4BIT_H_
	#define COMPARATOR_4BIT_H_

	#include "pinout.h"
    #include "../MCAL/DIO/dio.h"
    #include "../utility/int_types.h"


	#define GND_7485 8
	#define VCC_7485 16
	
	#define A0_7485 10
	#define A1_7485 12
	#define A2_7485 13
	#define A3_7485 15
	
	#define B0_7485 9
	#define B1_7485 11	
	#define B2_7485 14
	#define B3_7485 1
	
	#define A_gt_B_7485 5
	#define A_eq_B_7485 6
	#define A_lt_B_7485 7
	
	void init_7485(void);
	uint8_t is_7485(void);
	
#endif /* COMPARATOR_4BIT_H_ */