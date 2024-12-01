/*
 * xnor.h
 *
 * Created: 8/25/2023 1:17:41 AM
 *  Author: user
 
 "CMOS Quad 2-i/p Xnor IC"
 
					PORTA  pin# 	_____________ _____________		   pin#	 PORTB
					0		1	A1	|1(in)		 O		(in)14|	  Vcc   16	 7
									|						  |
					1		2	B1	|2(in)				(in)13|   B4    15	 6
									|						  |
					2		3	O1	|3(out)				(in)12|	  A4    14	 5
									|						  |
					3		4	O2	|4(out)			   (out)11|	  O4    13	 4
									|						  |
					4		5	A2	|5(in)			   (out)10|	  O3	12	 3
									|						  |
					5		6	B2	|6(in)				(in) 9|	  B3	11	 2
									|						  |
					6		7	GND	|7(in)		4077    (in) 8|   A3	10	 1
									___________________________
					7		8											9    0
 
 
 */ 


#ifndef XNOR_H_
	#define XNOR_H_

    #include "../MCAL/DIO/dio.h"
    #include "../utility/int_types.h"
	#include "pinout.h"
	
	#define GND_4077 7
	#define VCC_4077 14
	
	#define in1_1_4077 1
	#define in1_2_4077 2
	#define out_1_4077 3
	
	#define in2_1_4077 5
	#define in2_2_4077 6
	#define out_2_4077 4
	
	#define in3_1_4077 8
	#define in3_2_4077 9
	#define out_3_4077 10
	
	#define in4_1_4077 12
	#define in4_2_4077 13
	#define out_4_4077 11
	
	#define N_PINS_4077 14
	
	void init_4077(void);	// set pin directions
	uint8_t is_4077(void);	// test
	


#endif /* XNOR_H_ */