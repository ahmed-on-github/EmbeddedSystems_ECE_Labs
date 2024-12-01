/*
 * pinout.h
 *
 * Created: 8/25/2023 1:34:24 AM
 *  Author: user
 */ 

	
#ifndef PINOUT_H_
	#define PINOUT_H_
	#include "dio.h"
	
	/*
	#define PIN_16 16
	#define PIN_15 15
	#define PIN_14 14
	#define PIN_13 13
	#define PIN_12 12
	#define PIN_11 11
	#define PIN_10 10
	#define PIN_9  9
	#define PIN_8 8
	#define PIN_7 7
	#define PIN_6 6
	#define PIN_5 5
	#define PIN_4 4
	#define PIN_3 3
	#define PIN_2 2
	#define PIN_1 1
	*/
	
	#define F_CPU 1000000UL
	
	void init(void);
	void delay(float sec);
	
	enum ICs{ Undefined_IC/* 0 */,\
			  _4077 /* 1: quad 2 i/p xnor*/,\
			 _7485 /*  2:  4 bit comparator*/};

#endif /* PINOUT_H_ */