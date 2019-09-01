#define ON 1
#define OFF 0
#define rly1 RC0_bit
#define rly2 RC1_bit
#define rly3 RC2_bit
#define rly4 RC3_bit
#define display portb
#define digit_1 RC5_bit
#define digit_2 RC6_bit
#define digit_3 RC7_bit
#define digit_4 RA2_bit
#define digit_5 RA5_bit
#define digit_6 RB7_bit
#define delay_key RA4_bit
#include "define.h"

void defult(){
  min_time = 30;    // delay time [in second]
  max_time = 300;   // delay time [in second]
  in_volt_adj = 45; // adjust Input Voltage internally
  Lo_cut = 150;
  rly1_cut = 180;
  rly2_cut = 200;
  rly3_cut = 240;
  rly4_cut = 260;
  Hi_cut = 280;
}

void main(){
  hardware_init();
  defult();
  if(!delay_key) delay(min_time);
  else delay(max_time);
  
    while(1){
      voltmeter();
    }
}