#line 1 "C:/Users/antor/Google Drive/Embedded Projects/Hasan Bhai/Stabilizer/firmware/stabilazer.c"
#line 1 "c:/users/antor/google drive/embedded projects/hasan bhai/stabilizer/firmware/define.h"

const unsigned short cathode[] = {63,6,91,79,102,109,125,7,127,111};
const unsigned short anode[] = {192,249,164,176,153,146,130,248,128,144};

const unsigned short font_c[] = {64,56,63,124,118,48,113};
const unsigned short font_a[] = {191,199,192,193,137,207,142};


int in_ADC, out_ADC, temp;
int rly1_cut, rly2_cut, rly3_cut, rly4_cut;
int Hi_cut, Lo_cut;
int in_volt_adj;
int min_time, max_time;

void hardware_init(){
 adcon1 = 0x04;
 trisA = 0x1B; portA = 0x00;
 trisB = 0x00; portB = 0x00;
 trisC = 0x00; portC = 0x00;
}

void clear(){
  RC5_bit  =  0 ;  RC6_bit  =  0 ;  RC7_bit  =  0 ;
  RA2_bit  =  0 ;  RA5_bit  =  0 ;  RB7_bit  =  0 ;
}

void dash_show(){
  portb  = font_a[2];
  RA2_bit  =  1 ; delay_ms(1); clear();
  portb  = font_a[6];
  RA5_bit  =  1 ; delay_ms(1); clear();
  portb  = font_a[6];
  RB7_bit  =  1 ; delay_ms(1); clear();
}

void segment_byte(short seg, int value){
 char temp;
 temp = value / 100;
  portb  = anode[temp];
 if(seg == 0) { RC5_bit  =  1 ; delay_ms(1); clear();}
 else { RA2_bit  =  1 ; delay_ms(1); clear();}
 temp = (value / 10) % 10;
  portb  = anode[temp];
 if(seg == 0) { RC6_bit  =  1 ; delay_ms(1); clear();}
 else { RA5_bit  =  1 ; delay_ms(1); clear();}
 temp = value % 10;
  portb  = anode[temp];
 if(seg == 0) { RC7_bit  =  1 ; delay_ms(1); clear();}
 else { RB7_bit  =  1 ; delay_ms(1); clear();}
}

void delay(unsigned int time){
 unsigned int count, count2;
  RC0_bit  = 0;  RC1_bit  = 0;  RC2_bit  = 0;  RC3_bit  = 0;
 for(count=0;count<=time;count++){
 for(count2=0;count2<166;count2++){
 segment_byte(0, count);
 dash_show();
 }
 }
}

void check_inADC(){
 in_ADC = adc_read(0);
 in_ADC += in_volt_adj;
}

void Low_volt(){
  RC0_bit  = 0;  RC1_bit  = 0;  RC2_bit  = 0;  RC3_bit  = 0;
 while(1){
  portb  = font_a[1];
  RC5_bit  =  1 ; delay_ms(1); clear();
  portb  = font_a[2];
  RC6_bit  =  1 ; delay_ms(1); clear();


  portb  = font_a[3];
  RC7_bit  =  1 ; delay_ms(1); clear();
 dash_show();
 check_inADC();
 if(in_ADC >= Lo_cut + 5)break;
 };
 if(! RA4_bit ) delay(min_time);
 else delay(max_time);
}

void Hi_volt(){
  RC0_bit  = 0;  RC1_bit  = 0;  RC2_bit  = 0;  RC3_bit  = 0;
 while(1){
  portb  = font_a[4];
  RC5_bit  =  1 ; delay_ms(1); clear();
  portb  = font_a[5];
  RC6_bit  =  1 ; delay_ms(1); clear();


  portb  = font_a[3];
  RC7_bit  =  1 ; delay_ms(1); clear();
 dash_show();
 check_inADC();
 if(in_ADC <= Hi_cut - 5)break;
 }
 if(! RA4_bit ) delay(min_time);
 else delay(max_time);
}

void check_AVR(int avr_ADC){
 if(avr_ADC >= rly1_cut) RC0_bit  = 1;
 if(avr_ADC <= rly1_cut - 5) RC0_bit  = 0;
 if(avr_ADC >= rly2_cut) RC1_bit  = 1;
 if(avr_ADC <= rly2_cut - 5) RC1_bit  = 0;
 if(avr_ADC >= rly3_cut) RC2_bit  = 1;
 if(avr_ADC <= rly3_cut - 5) RC2_bit  = 0;
 if(avr_ADC >= rly4_cut) RC3_bit  = 1;
 if(avr_ADC <= rly4_cut - 5) RC3_bit  = 0;
 if(avr_ADC <= Lo_cut)Low_volt();
 if(avr_ADC >= Hi_cut)Hi_volt();
}

void voltmeter(){
 check_inADC();
 out_ADC = 220;
 segment_byte(0, in_ADC);
 segment_byte(1, out_ADC);
 check_AVR(in_ADC);
}
#line 17 "C:/Users/antor/Google Drive/Embedded Projects/Hasan Bhai/Stabilizer/firmware/stabilazer.c"
void defult(){
 min_time = 30;
 max_time = 300;
 in_volt_adj = 45;
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
 if(! RA4_bit ) delay(min_time);
 else delay(max_time);

 while(1){
 voltmeter();
 }
}
