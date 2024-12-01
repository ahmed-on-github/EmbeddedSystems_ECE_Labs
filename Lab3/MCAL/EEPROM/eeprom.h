#ifndef EEPROM_H_
#define EEPROM_H_

#include "../../utility/reg.h"
#include "../../utility/bit_math.h"

#define eeprom_is_busy()        ((uint8_t)(READ_BIT(EECR,EEWE)))

#define enable_interrupts()		(SET_BIT(SREG,I))
#define disable_interrupts()	(CLEAR_BIT(SREG,I))

// return -1 on fail , else 0
char eeprom_write_byte(uint16_t addr , uint8_t byte);
char eeprom_read_byte(uint16_t addr , uint8_t *ptr);

//call the read/write byte functions
char eeprom_write_2bytes(uint16_t addr , uint16_t word);
char eeprom_read_2bytes(uint16_t addr , uint16_t *ptr);




#endif /*EEPROM_H_*/
