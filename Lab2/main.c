/*
 * main.c
 * 
 * keylock project 
 *
 * Created: 8/23/2023 10:37:29 AM
 * Author : Ahmed Ibrahim
 */ 

#include "App/app.h"

#include <util/delay.h>
/* arbitrary and constant eeprom address (Not memory-mapped address, just an offset) to store the password*/
const uint16_t address = 0x00FF; 

/*password properties */
uint8_t  pass_len = 0;
uint16_t password = 0x0000;
uint16_t default_pass = 0xFFFF;

/*password entering stop */
uint8_t bit_added =0;
uint8_t password_passed = 0;
uint8_t stop_cnt =0;

/*read from eeprom */
uint16_t eeprom_pass; // must be in space of global vars, else it's considered out of memory bounds

/*read from user*/
uint16_t enter_pass;

/*others*/
unsigned char start = 1;
uint8_t i;


int main(void){
	
	init();
	uint8_t password_passed = 0;
    
    while (1) {
		if( button_read(PORT__LOCK,SW2) == 1/* or : BIT_VAL(LOCK_PIN,SW2) */ ){ /*Password creation mode */
			start =0;
			LED_off(PORT__LED,LED_READY); /*Already entered password programming mode*/
			
			_delay_ms(150); /* De-bouncing delay */
			
			//loop_cnt =0 ; // enable new password creation
			password =0x00;
			pass_len =0;
			stop_cnt =0;
			 
			while(button_read(PORT__LOCK,SW2) == 1 /* or : BIT_VAL(LOCK_PIN,SW2) */){ /* if still pressed (De-bouncing)*/
				bit_added =0;
				if( button_read(PORT__LOCK,SW0) || button_read(PORT__LOCK,SW1) ){ /* if any of them is pressed */
					if(pass_len < 16){						

                        _delay_ms(150); /* De-bouncing delay */
                        
						if( button_read(PORT__LOCK,SW0) ){ /*sw0 is pressed */
                            pass_len++;     // increment length
                            password<<=1;   // shift by 1 bit
                            
							/* do nothing as shifting rigth adds 0 to LSB */
                            
						}
						else if( button_read(PORT__LOCK,SW1) ){ /*sw1 is pressed */
                            password<<=1;   // shift by 1 bit
                            pass_len++;     // increment length
                            
							password |= 0x01; /* or password++; to add 1 to LSB */
						}
                        else{/*Nothing*/}
					}
					bit_added =1;
				}
				else{/*Nothing*/}
                
				// loop_cnt++;
				if(bit_added ==0){
					stop_cnt++;
				}
				else{
					stop_cnt = 0;
				}
				/*small delay to allow user to leave the buttons */
                for(i = 0 ; i < 10 ; i++){
                    if(button_read(PORT__LOCK,SW0) == 1 || button_read(PORT__LOCK,SW1) == 1 ){
                        _delay_ms(20); /*They should be released in this duration*/
                    }
                    else{
                        break;
                    }
                }
                
                /*Stopping Criteria*/
				if(stop_cnt==4 || pass_len == 16 ){ // if 4 loops are idle and user didn't add other bits or max_passwd length is entered
					break;	/*	from while loop. No more password bits to be read from the button presses*/	
				}
			}
			if( /* password creation is over */ pass_len > 0 ){ /*Ex : pass_len 0 , store the password in the eeprom*/
				/*Store the password*/
                if(pass_len > 0 && pass_len <=8){
					eeprom_write_byte	(address , password);
				}
				else {/* length > 8 & <= 16 */
					eeprom_write_2bytes (address , password);
				}
                /*Store the password's length in bits if it's > 0*/
				if(pass_len >0 && eeprom_write_byte	(address-1 , pass_len) == 0){
					pass_len =0 ; /* hide pass word length from user */
				}
                else{}
				LED_on(PORT__LED,LED_READY); /*ready again to enter programming mode */
			}
            else{}
		}
		else{ /*Password entering mode */
			
			if(/*start == 0 &&*/ password_passed == 0){ /*A brand new password is written recently. Enter it to continue*/
                
				// debugging : show read value from eeprom on portc and portd
				/*if( eeprom_read_2bytes(address, (uint16_t*)(&eeprom_pass) )==0 ){
					PORTC = (uint8_t)(eeprom_pass&0x00FF) ;
					PORTD = (uint8_t)( (eeprom_pass&0xFF00)>>8 ) ;
				}*/
				if( eeprom_read_byte(address-1, (uint8_t*)&pass_len ) == 0 ){ /*Read password length successfully*/
					if( eeprom_read_2bytes(address, (uint16_t*)(&eeprom_pass) ) == 0 ){ /*read password itself successfully*/
						enter_pass = 0x0000;
						for(i = 0 ; i < pass_len ; i++){
							while( !(button_read(PORT__LOCK,SW0) == 1 || button_read(PORT__LOCK,SW1) ==1 ) ); /* wait for any button to be pressed*/
							_delay_ms(150); /*a button of them is pressed , de-bouncing delay */
							LED_off(PORT__LED,LED_RED);/*Turn off as a retry is an indication of no error*/
                            
							if( button_read(PORT__LOCK,SW0) == 1 ){ /* bit '0' entered*/
                                enter_pass <<= 1; /*Leave a place in the LSB to store the user's entered bit*/
								if( /*((eeprom_pass>>i)&0x0001) */READ_BIT(eeprom_pass,i) != 0 ){
									LED_on(PORT__LED,LED_RED); /* wrong pass entered */
									break; /*break from for loop*/
								}
								//do nothing , as entered password already shifted
							}
							else if(button_read(PORT__LOCK,SW1)==1){ /* bit '1' entered */
                                enter_pass <<= 1; /*Leave a place in the LSB to store the user's entered bit*/
								if( /*((eeprom_pass>>i)&0x0001) */ READ_BIT(eeprom_pass,i) == 0 ){
									LED_on(PORT__LED,LED_RED); /* wrong pass entered */
									break;
								}
								enter_pass |= 0x0001; //or enter_pass++;
							}
                            else{/*Nothing*/}
						}
                        /*Continue with the remaining of the 16 bits: User should not press any button if correct password is entered*/
                        for( ; i < 16 && /*if correct password is entered*/ i == pass_len ; i++){
                            if( (button_read(PORT__LOCK,SW0) == 1 || button_read(PORT__LOCK,SW1) == 1 ) ){
                                _delay_ms(150); /*a button of them is pressed , de-bouncing delay */
                                if( (button_read(PORT__LOCK,SW0) == 1 || button_read(PORT__LOCK,SW1) ==1 ) ){
									LED_on(PORT__LED,LED_RED); /* wrong pass entered */
									break;                                    
                                }
                                else{/*Nothing*/}
                            }
                            else{
                                _delay_ms(50); /*A delay to allow user to add more extra password wrong bits*/
                            }
                        }
                        /*Check the entered password status*/
						if( LED_state(PORT__LED,LED_RED) == 0){ /*User entered correct password (Red Led is an indication of wrong password)*/
							LED_on(PORT__LED,LED_GREEN);
                            start = 1 ; /*Application Started successfully, user can proceed with the next code that was protected*/
                            password_passed = 1;
                        }
                        else{/*Nothing, will try again to enter it*/ }
					}
                    else{ /*Could not read password length*/ }
				}
                else{ /*Could not read password length*/ }
			}
		}
        /*Code that was protected by the password*/
        if( LED_state(PORT__LED, LED_GREEN) && ( LED_state(PORT__LED, LED_RED) == 0) ){
            /*  Code :)
               ...
               ...
           */
        }
    }
    return 0;
}