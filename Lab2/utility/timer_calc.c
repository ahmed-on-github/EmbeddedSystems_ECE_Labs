#include <stdio.h>
#define F_CPU 1000000UL
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;

int main(){  
	 
    uint16_t _ms = 1000;
    uint8_t timer =0;
    if(timer >2)
        return -1;
    double full_scale ;
    if(timer!=1)
        full_scale =256.0;
    else
        full_scale = 65536.0;
    double fcpu = (double)F_CPU;
    uint16_t prescaler_arr [5] = {1,8,64,256,1024};
    uint8_t i;
    double t_tick ;
    double t_max ;
    double t_delay = _ms/1000.0; //in sec
    double n_overflow ;
    for( i=0 ; i<5 ;i++){
        t_tick = prescaler_arr[i]/fcpu;
        t_max = t_tick*full_scale;
        if(t_delay < t_max){
            break;
        }
    }
    if(i==5)
        i=4;
    //get ceiling of n_overflow
    n_overflow = t_delay/t_max;
    if(n_overflow == (int)n_overflow)
        n_overflow = t_delay/t_max;
    else
        n_overflow = (int)n_overflow+1;
    printf("timer %u , delay = %u sec :\n",timer,_ms);	
    printf("prescaler=%u\n",prescaler_arr[i]); 
    uint16_t t_init_val = full_scale - (t_delay)/(t_tick*n_overflow);  
    printf("TCNT init_val=%u  \noverflows = %u\n",t_init_val,(uint16_t)n_overflow);
    
    return 0;
}


