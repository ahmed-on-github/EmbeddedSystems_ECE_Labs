#ifndef _REG_
    #define _REG_

    #include "int_types.h"

    // port A:
    #define PORTA (*(volatile uint8_t *)0x3B)
    #define DDRA (*(volatile uint8_t *)0x3A)
    #define PINA (*(volatile uint8_t *)0x39)

    // port B:
    #define PORTB (*(volatile uint8_t *)0x38)
    #define DDRB (*(volatile uint8_t *)0x37)
    #define PINB (*(volatile uint8_t *)0x36)

    // port C:
    #define PORTC (*(volatile uint8_t *)0x35)
    #define DDRC (*(volatile uint8_t *)0x34)
    #define PINC (*(volatile uint8_t *)0x33)

    // port D:
    #define PORTD (*(volatile uint8_t *)0x32)
    #define DDRD (*(volatile uint8_t *)0x31)
    #define PIND (*(volatile uint8_t *)0x30)
//----------------------------------------------------------------
    // External interrupts registers
    #define MCUCR (*(volatile uint8_t *)0x55)
    #define MCUCSR (*(volatile uint8_t *)0x54)

    #define GICR (*(volatile uint8_t *)0x5B)
    #define GIFR (*(volatile uint8_t *)0x5A)

    #define SREG (*(volatile uint8_t *)0x5F)
    #define I 7

    // external interrupt 0 INT0
        //sensing control bits
            #define ISC00 0
            #define ISC01 1
        // Interrupt enable bit
            #define INT0 6
        // Interrupt flag bit
            #define INTF0 6
 //--------------------------------------------------------------------------------
    // external interrupt 1 INT1
        //sensing control bits
            #define ISC10 2
            #define ISC11 3
        // Interrupt enable bit
            #define INT1 7
        // Interrupt flag bit
            #define INTF1 7
//----------------------------------------------------------------------------------
    // external interrupt 2 INT2
        //sensing control bits
            #define ISC2 6
        // Interrupt enable bit
            #define INT2 5
        // Interrupt flag bit
            #define INTF2 5
//---------------------------------------------------------------------------------
    #define TIMSK (*(volatile uint8_t*)0x59) // timer interrupt enable
    #define TIFR (*(volatile uint8_t*)0x58)  // timer interrupt flag
    // timer 0 (8-bit timer)
    #define TCNT0 (*(volatile uint8_t*)0x52)
    #define TCCR0 (*(volatile uint8_t*)0x53)

    #define TOV0 0
    #define TOIE0 0
    //timer 1 (16-bit timer)
    #define TCNT1L (*(volatile uint8_t*)0x4C)
    #define TCNT1H (*(volatile uint8_t*)0x4D)

    #define TCCR1B (*(volatile uint8_t*)0x4E)
    #define TCCR1A (*(volatile uint8_t*)0x4F)

    #define TOV1 2
    #define TOIE1 2
//------------------------------------------------------------------------------------
	//Eeprom registers

	//adrees reg
	#define EEAR (*(volatile uint16_t*)0x3E)

	#define EEARL (*(volatile uint8_t*)0x3E)
	#define EEARH (*(volatile uint8_t*)0x3F)

	//data reg
	#define EEDR (*(volatile uint8_t*)0x3D)

	//control reg
	#define EECR (*(volatile uint8_t*)0x3C)

	#define EERIE 3
	#define EEMWE 2
	#define EEWE  1
	#define EERE  0

#endif
