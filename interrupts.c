/*
 * Interrupt handlers. All tests are handled through timer 2 interrupt.
 * Timer 2 runs at 100Hz and checks to see if a command packet has
 * been received. If so, it pushes the appropriate test routine onto
 * a function queue to be popped and executed in the main loop.
 *
 * Created: 2011-04-16
 * Author: AMH
 */
#include "consts.h"
#include "tests.h"
#include "timer.h"
#include "radio.h"


unsigned char* rxPacketData;
unsigned char type, status, length;

volatile unsigned int t2_ticks;

volatile PayQueue rx_pay_queue;

void __attribute__((interrupt, no_auto_psv)) _INT0Interrupt(void) {

    _INT0IF = 0;    // Clear the interrupt flag
}

void __attribute__((interrupt, no_auto_psv)) _T1Interrupt(void) {

    _T1IF = 0;
}


void __attribute__((interrupt, no_auto_psv)) _T2Interrupt(void) {
    Payload rx_payload;

    if (!radioIsRxQueueEmpty())
    {
        rx_payload = radioReceivePayload();
        pqPush(rx_pay_queue, rx_payload);
        switch(payGetType(rx_payload))
        {
            case RADIO_TEST:
                queuePush(fun_queue, &test_radio);
                break;
            case GYRO_TEST:
                queuePush(fun_queue, &test_gyro);
                break;
            case ACCEL_TEST:
                queuePush(fun_queue, &test_accel);
                break;
            case DFLASH_TEST:
                queuePush(fun_queue, &test_dflash);
                break;
            case MOTOR_TEST:
                queuePush(fun_queue, &test_motor);
                break;
            case SMA_TEST:
                queuePush(fun_queue, &test_sma);
                break;
            default:
                break;
        }
    }
    _T2IF = 0;
}
