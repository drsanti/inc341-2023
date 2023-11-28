#include <stdint.h>
int32_t t0 = 0;
int32_t t1 = 1;
int32_t i = 0;

void _if(void){

    if(t0 < t1) {
        // task
    }
    // end if
}

void _if_else(void){

    if(t0 < t1) {
        // task1
    }
    else {
        // task2
    }
    // end if-else
}

void _for(void)
{
    for(i=0; i<5; i++) {
        // task
    }
    // end for
}

void _while_1(void)
{
    while(1) {
        // task
    }
}

void _while(void)
{
    while( t0 < t1) {
        // task
    }
    // end while
}

void _do_while(void)
{
    do {
        // task
    }while( t0 < t1);
    // end do-while
}

