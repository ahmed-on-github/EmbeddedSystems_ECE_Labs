/*
 * eeprom.c
 *
 * Created: 8/23/2023 10:38:55 AM
 *  Author: user
 */
#include "eeprom.h"

// return -1 on fail , else 0

char eeprom_write_byte(uint16_t addr , uint8_t byte){
	uint8_t interrupts_on=0 ;
	while(eeprom_is_busy());// wait if it is busy

	// write address and data regs
	EEAR = addr;
	EEDR = byte;

	//disable interrupts
	if( READ_BIT(SREG,I) ){
		interrupts_on = 1;
		disable_interrupts();
	}

	/* Write logical one to EEMWE */
	SET_BIT(EECR,EEMWE);
	// or : EECR |= (1<<EEMWE);
	/* Start eeprom write by setting EEWE */
	SET_BIT(EECR,EEWE);
	// or: EECR |= (1<<EEWE)

	while( READ_BIT(EECR,EEWE) ); // wait for it to be cleared by HW after write process is over
	if(interrupts_on){
		enable_interrupts();
	}
	return 0;
}

char eeprom_read_byte(uint16_t addr , uint8_t* ptr){
	uint8_t interrupts_on=0 ;
	while( eeprom_is_busy() );// wait

	//write address reg only
	EEAR = addr;

	//disable interrupts
	if( READ_BIT(SREG,I) ){
		interrupts_on = 1;
		disable_interrupts();
	}

	/* Start eeprom read by setting EERE */
	SET_BIT(EECR,EERE);
	// or: EECR |= (1<<EERE)

	if(interrupts_on){
		enable_interrupts();
	}
	*ptr = (uint8_t)EEDR;
	return 0;
}

//call the read/write byte functions

char eeprom_write_2bytes(uint16_t addr , uint16_t word){

	//write lower byte of 'word' in 'addr'
	if( eeprom_write_byte(addr , (uint8_t)word ) !=0 ){ //
		return -1;
	}

	//write higher byte of 'word' in 'addr+1'
	if( eeprom_write_byte(addr+1 , (uint8_t)( word>>8 )) !=0 ){
		return -1;
	}
	return 0;
}

char eeprom_read_2bytes(uint16_t addr , uint16_t* ptr){

	//write lower byte of 'word' in 'addr'
	if( eeprom_read_byte(addr , (uint8_t*)(ptr) ) !=0 ){ //
		return -1;
	}

	//write higher byte of 'word' in 'addr+1'
	if( eeprom_read_byte(addr+1 , (uint8_t*)ptr +1 ) !=0 ){
		return -1;
	}
	return 0;
}

