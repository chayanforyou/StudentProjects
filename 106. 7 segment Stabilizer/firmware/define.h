
const unsigned short cathode[] = {63,6,91,79,102,109,125,7,127,111};
const unsigned short anode[] = {192,249,164,176,153,146,130,248,128,144};
                               //0,  1,  2,  3,  4,  5,  6,  7,  8,  9
const unsigned short font_c[] = {64,56,63,124,118,48,113};
const unsigned short font_a[] = {191,199,192,193,137,207,142};
                                //-,  L,  O,  b,  H,  I,  F

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
  digit_1 = OFF; digit_2 = OFF; digit_3 = OFF;
  digit_4 = OFF; digit_5 = OFF; digit_6 = OFF;
}

void dash_show(){
   display = font_a[2];
   digit_4 = ON; delay_ms(1); clear();
   display = font_a[6];
   digit_5 = ON; delay_ms(1); clear();
   display = font_a[6];
   digit_6 = ON; delay_ms(1); clear();
}

void segment_byte(short seg, int value){
  char temp;
  temp = value / 100;
  display = anode[temp];
  if(seg == 0) {digit_1 = ON; delay_ms(1); clear();}
  else {digit_4 = ON; delay_ms(1); clear();}
  temp = (value / 10) % 10;
  display = anode[temp];
  if(seg == 0) {digit_2 = ON; delay_ms(1); clear();}
  else {digit_5 = ON; delay_ms(1); clear();}
  temp = value % 10;
  display = anode[temp];
  if(seg == 0) {digit_3 = ON; delay_ms(1); clear();}
  else {digit_6 = ON; delay_ms(1); clear();}
}

void delay(unsigned int time){
   unsigned int count, count2;
   rly1 = 0; rly2 = 0; rly3 = 0; rly4 = 0;
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
  rly1 = 0; rly2 = 0; rly3 = 0; rly4 = 0;
  while(1){
    display = font_a[1];                    //L
    digit_1 = ON; delay_ms(1); clear();
    display = font_a[2];                    //O
    digit_2 = ON; delay_ms(1); clear();
    //display = 128;                        //.
    //digit_2 = ON; delay_ms(1); clear();
    display = font_a[3];                    //b
    digit_3 = ON; delay_ms(1); clear();
    dash_show();                        //OFF
    check_inADC();
    if(in_ADC >= Lo_cut + 5)break;
  };
  if(!delay_key) delay(min_time);
  else delay(max_time);
}

void Hi_volt(){
  rly1 = 0; rly2 = 0; rly3 = 0; rly4 = 0;
  while(1){
    display = font_a[4];                    //H
    digit_1 = ON; delay_ms(1); clear();
    display = font_a[5];                    //I
    digit_2 = ON; delay_ms(1); clear();
    //display = 128;                        //.
    //digit_2 = ON; delay_ms(1); clear();
    display = font_a[3];                    //b
    digit_3 = ON; delay_ms(1); clear();
    dash_show();                        //OFF
    check_inADC();
    if(in_ADC <= Hi_cut - 5)break;
  }
  if(!delay_key) delay(min_time);
  else delay(max_time);
}

void check_AVR(int avr_ADC){
  if(avr_ADC >= rly1_cut)rly1 = 1;
  if(avr_ADC <= rly1_cut - 5)rly1 = 0;
  if(avr_ADC >= rly2_cut)rly2 = 1;
  if(avr_ADC <= rly2_cut - 5)rly2 = 0;
  if(avr_ADC >= rly3_cut)rly3 = 1;
  if(avr_ADC <= rly3_cut - 5)rly3 = 0;
  if(avr_ADC >= rly4_cut)rly4 = 1;
  if(avr_ADC <= rly4_cut - 5)rly4 = 0;
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