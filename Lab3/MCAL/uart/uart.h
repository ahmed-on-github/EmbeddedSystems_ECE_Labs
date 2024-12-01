/* 
 * File:   uart.h
 * Author: user
 *
 * Created on December 1, 2024, 12:53 PM
 */

#ifndef UART_H
#define	UART_H

#include "../../utility/int_types.h"
#include "../../utility/reg.h"
#include "../../utility/bit_math.h"

/*For UART registers definitions*/
#include <xc.h>

#ifndef F_CPU
#define F_CPU 8000000
#endif

#ifndef NULL
#define NULL ((void *)0x00UL)
#endif



void    UART_Init();
void    UART_SendByte(uint8_t data, uint8_t *errorRef);
uint8_t UART_ReceiveByte(uint8_t *errorRef);
void    UART_SendString(uint8_t *str , uint8_t *errorRef);
void    UART_ReceiveString(uint8_t *str , uint16_t strLen,uint8_t *errorRef);

#endif	/* UART_H */

