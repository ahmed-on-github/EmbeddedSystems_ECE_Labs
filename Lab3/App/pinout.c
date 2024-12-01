/*
 * pinout.c
 *
 * Created: 8/25/2023 1:59:28 AM
 *  Author: user
 */ 
#include "pinout.h"

void init(void){ 
	PINC = 0xFF; // o/p for debugging
	PORTC = 0x00; //initial val
}

void delay(float sec){
	#define F_CPU 1000000UL

	if(sec<=0 )
		return;
		
	uint16_t limit , i=0,j=0;
	uint16_t secs = (uint16_t)sec;	// take integer part only 
	
	if(sec >0.0f && sec<= 1.f){
		
		limit = (uint16_t)( sec*(float)( 0xFFFF )) ;
		//delay < 1 sec (fractional delay)
		while(i++ < limit); //delay
		while(i++ < limit); //delay
	}	
	else{
		limit = (uint16_t)( (sec - (float)secs)*(float)( 0xFFFF ) ) ;
		//delay < 1 sec (fractional delay)
		while(i++ < limit);
		while(i++ < limit);
		
		for( j=1 ; j<= 2*secs;j++){
			i=0;
			while( i++ < 0xFFFF -1 );
			
		} 
	}
	
	
}