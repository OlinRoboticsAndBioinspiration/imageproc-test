#ifndef __INTERRUPTS_H
#define __INTERRUPTS_H

#define TX_QUEUE_SIZE   128 
#define RX_QUEUE_SIZE   128

void __attribute__((interrupt, no_auto_psv)) _INT0Interrupt(void);
void __attribute__((interrupt, no_auto_psv)) _T1Interrupt(void);
void __attribute__((interrupt, no_auto_psv)) _T2Interrupt(void);

extern volatile unsigned int t1_ticks;
extern unsigned char t1_cycles;
extern volatile unsigned int pwm_period_ticks;
extern volatile unsigned int pwm_periods_per_cycle;

#endif
