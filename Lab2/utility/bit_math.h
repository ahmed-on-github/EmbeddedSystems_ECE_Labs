/* 
 * File:   bit_math.h
 * Author: user
 *
 * Created on November 28, 2024, 9:40 PM
 */

#ifndef BIT_MATH_H
#define	BIT_MATH_H

#define SET_BIT(REG,BIT)    ( (REG) |= (1U<<(BIT)) )
#define CLEAR_BIT(REG,BIT)  ( (REG) &= (~(1U<<(BIT))) )
#define TOGGLE_BIT(REG,BIT) ( (REG) ^= (1U<<(BIT)) )

#define READ_BIT(REG,BIT)   ( ((REG) & (1U<<(BIT))) != 0U )
#define WRITE_REG(REG, VAL) (  (REG) = (VAL))

#define WRITE_BIT_FIELD(REG, BITFIELD_LEN, FIRST_BIT_IDX, BITFIELD_VAL) \
WRITE_REG( (REG), ((REG)&(~(((1U<<(BITFIELD_LEN))-1)<<(FIRST_BIT_IDX))))|((BITFIELD_VAL)<<(FIRST_BIT_IDX)) )


#endif	/* BIT_MATH_H */

