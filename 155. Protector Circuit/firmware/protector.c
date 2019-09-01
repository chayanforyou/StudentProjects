#define digit_1 RC4_bit
#define digit_2 RC3_bit
#define digit_3 RC2_bit
#define digit_4 RC7_bit
#define digit_5 RC6_bit
#define digit_6 RC5_bit
#define relay RA5_bit

#define MAX_delay 300   //change as you like
#define MIN_delay 30    //change as you like
#define ADJUST 20      //change it to accurate 1 second delay.

char anode[] = {192, 249, 164, 176, 153, 146, 130, 248, 128, 144};
char dly[] = {161, 199, 145};  //dLY

void clear_display(){
  digit_1 = 0; digit_2 = 0;
  digit_3 = 0; digit_4 = 0;
  digit_5 = 0; digit_6 = 0;
}

void show_display(char flag, int dta){
  char digit[3], x;
  digit[0] = dta / 100;
  digit[1] = (dta % 100) / 10;
  digit[2] = dta % 10;
  for(x = 0; x < 3; x++){
    if(flag == 1){
      if(x == 0) digit_1 = 1;
      if(x == 1) digit_2 = 1;
      if(x == 2) digit_3 = 1;
    }
    else if(flag == 2){
      if(x == 0) digit_4 = 1;
      if(x == 1) digit_5 = 1;
      if(x == 2) digit_6 = 1;
    }
    if(dta < 500) PORTB = anode[digit[x]];
    else PORTB = dly[x];
    delay_ms(1);
    clear_display();
  }
}

char check_delay_pin(){
  char adc = adc_read(0);
  if(adc > 200) return 1;
  else return 0;
}

void delay_control(){
  int delay_s, x, y;
  if(check_delay_pin()) delay_s = MAX_delay;
  else delay_s = MIN_delay;
  for(x = delay_s; x >= 0; x--){
    for(y = 0; y < ADJUST; y++){
      show_display(1, 500); //dly
      show_display(2, x);  //counter
    }
  }
}

void main() {
  ADCON1 = 0x04;
  TRISA = 0x03;
  TRISB = 0x00;
  TRISC = 0x00;
  relay = 0;
  delay_control();
  
  while(1){
    char x, adc = 0;
    adc = adc_read(1);
    relay = 1;
    for(x = 0; x < 200; x++){
      show_display(1, adc);
      show_display(2, 220);
    }
  }
}