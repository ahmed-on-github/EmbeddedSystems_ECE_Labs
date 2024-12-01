#include "uart.h"

void UART_Init(){
    /*Baud Rate equation with a divisor = 8, not 16 (Only in async mode UART)*/
	UCSRA |= (1<<U2X); 
    /*Disable reception, enable transmission*/
	UCSRB |= (0<<RXEN) | (1<<TXEN);               
    /*Enable UBRRH register for 16 bit register, select 8 bit data*/
	UCSRC |= (1<<URSEL) | (1<<UCSZ0) | (1<<UCSZ1);  
	/*For F_CPU = 8 MHz , baud rate = 57.6 kpbs, select UBRR = 16*/
    UBRRH = 0;
	UBRRL = 16;
}

void UART_SendByte(uint8_t data, uint8_t *errorRef){
    uint16_t timeout = 0x00;
    
    if(errorRef != NULL){
        /*Wait for Data register to become empty*/
        while(  (READ_BIT(UCSRA,UDRE) == 0x00) && ((timeout++) < 0xFFFE) ); /*0xFFFE is the timeout value*/

        if( (READ_BIT(UCSRA,UDRE) == 0x00) ){ /*Failure*/
            *errorRef = 0x01;
        }
        else{ /*Success*/
            *errorRef = 0x00;
            /*Start transmission by writing data to UDR*/
            UDR = data; 
        }
    }
    else{/*Nothing*/}
}

uint8_t UART_ReceiveByte(uint8_t *errorRef){
    uint16_t timeout = 0x00;
    uint8_t retVal = 0x00;
    
    if(errorRef != NULL){
        /*Wait for the previously received and unread data to be read*/
        while( READ_BIT(UCSRA,RXC) == 0x01  && ((timeout++) < 0xFFFE));

        if( READ_BIT(UCSRA,RXC) == 0x01 ){ /*Failure, previously receive data still unread*/
            *errorRef = 0x01;
        }
        else{ /*Success*/
            *errorRef = 0x00;
        }
        
        /*Read it to either return the true received value or to make the RX ready to receive again*/
        retVal = UDR;
    }
    else{
        retVal = 0xFF;
    }
    
    return retVal;
}

void    UART_SendString(uint8_t *str , uint8_t *errorRef){
    if(str != NULL && errorRef != NULL){
        while(*str != '\0'){
            UART_SendByte(*str,errorRef);
            
            if(*errorRef != 0x00){ /*Error occurred*/
                break;
            }
            else
                str++;
        }        
    }
    else{
        if(str == NULL && errorRef != NULL){
            *errorRef = 0x01;
        }
        else{/*Nothing*/}
    }
}

void    UART_ReceiveString(uint8_t *str , uint16_t strLen, uint8_t *errorRef){
    
	uint8_t i = 0;
    
    if( str != NULL && errorRef != NULL){
        
        str[i] = UART_ReceiveByte(errorRef);
        while(*errorRef == 0 && i < strLen/*str[i] != '\0'*/){
            i++;
            str[i] = UART_ReceiveByte(errorRef);
        }
        /*str[i] = '\0'; */
    }
    else{
        if(str == NULL && errorRef != NULL){
            *errorRef = 0x01;
        }
        else{/*Nothing*/}
    }

}
