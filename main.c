/*********************************************************************************************************
* Name: main.c
* Desc: A test suite for the ImageProc 2.2 system. These tests should not be
* considered rigorous, exhaustive tests of the hardware, but rather
* "smoke tests" - ie. turn on the functionality and make sure the 
* hardware/software doesn't start "smoking."
*
* The architecture is based on a function pointer queue scheduling model. The
* meat of the testing logic resides in test.c. If the radio has received a 
* command packet during the previous timer interval for Timer2, the appropriate
* function pointer is added to a queue in the interrupt service routine for 
* Timer2 (interrupts.c). The main loop simply pops the function pointer off
* the top of the queue and executes it. 
*
* Date: 2011-04-13
* Author: AMH
*********************************************************************************************************/
#include "p33Fxxxx.h"
#include "init.h"
#include "init_default.h"
#include "uart.h"
#include "timer.h"
#include "adc.h"
#include "i2c.h"
#include "interrupts.h"
#include "ports.h"
#include "ovcam.h"
#include "consts.h"
#include "utils.h"
#include "payload_queue.h"
#include "payload.h"
#include "at86rf.h"
#include "radio.h"
#include "tests.h"
#include "gyro.h"
#include "xl.h"
#include "dfmem.h"


volatile WordVal src_addr, src_pan_id, dst_addr;
Payload rx_payload;

int main ( void )
{
    fun_queue = queueInit(FUN_Q_LEN); 
    rx_pay_queue = pqInit(12); //replace 12 with a #define const later
    test_function tf;
    /* Initialization */
    SetupClock();
    SwitchClocks();
    SetupPorts();
    
    SetupInterrupts();
    SetupI2C();
    SetupADC();
    SetupTimer1();
    gyroSetup();
// Jan. 11, 2012 - Accel not working at the moment. Suspect hardware
    xlSetup();
    dfmemSetup();
    SetupPWM();
    SetupTimer2();

    src_addr.byte.LB = 0x10;
    src_addr.byte.HB = 0x01;
    src_pan_id.byte.LB = 0x00;
    src_pan_id.byte.HB = 0x00;
    // Default dest addr is for orange antenna basestation
    dst_addr.byte.LB = 0x00;
    dst_addr.byte.HB = 0x01;


    radioInit(src_addr, src_pan_id, 10, 30);
    radioSetDestAddr(dst_addr);
    radioSetChannel(20);

    char j;
    for(j=0; j<3; j++){
        LED_2 = ON;
        delay_ms(500);
        LED_2 = OFF;
        delay_ms(500);
    }

    LED_2 = ON;

    EnableIntT2;
    while(1){
        while(!queueIsEmpty(fun_queue))
        {
            rx_payload = pqPop(rx_pay_queue);
            tf = (test_function)queuePop(fun_queue);
            (*tf)(payGetType(rx_payload), payGetStatus(rx_payload), payGetDataLength(rx_payload), payGetData(rx_payload));
            payDelete(rx_payload);
        }
    }
    return 0;
}
