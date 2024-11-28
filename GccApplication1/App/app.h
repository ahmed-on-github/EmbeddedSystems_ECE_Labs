/*
 * app.h
 *
 * Created: 8/22/2023 5:18:10 AM
 *  Author: user
 */ 


#ifndef HEADER_H_
	#define HEADER_H_
	
	//#include "../utility/int_types.h"
	#include "../EUCAL/button/button.h"
	#include "../EUCAL/LED/LED.h"
	
	#ifndef F_CPU
		#define  F_CPU 1000000UL
	#endif
	#define LED1	0
	#define LED2	1
	#define LED3	2

	#define BUTTON1 0
	#define BUTTON2 1
	#define BUTTON3 2
	
	#define BUTTON_PORT		'A'
	#define LED_PORT		'B'
	
	void init(void);




#endif /* HEADER_H_ */