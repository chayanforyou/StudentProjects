#include "keypad4x3.h"
#define relay RA5_bit
#define digit_1 RA0_bit
#define digit_2 RA1_bit
#define digit_3 RA2_bit
#define digit_4 RA3_bit

union uint16{
  unsigned int full;
  unsigned short lsb, msb;
};

union uint16 counter, countup;
unsigned short digit[5];
bit IRF, relay_f;
char key;

char anode[] = {192, 249, 164, 176, 153, 146, 130, 248, 128, 144};

void interrupt(){
  if(INTF_bit){
    INTF_bit = 0;
    IRF = 1;
  }
}

void clear_digit(){
  digit_1 = 0; digit_2 = 0;
  digit_3 = 0; digit_4 = 0;
}

void masking(unsigned short temp){
  temp = anode[temp];
  PORTB = temp << 1;
}

void segment_int(unsigned int count){
   digit[0] = count / 1000;
   digit[1] = (count % 1000) / 100;
   digit[2] = (count % 100) / 10;
   digit[3] = count % 10;

   masking(digit[0]);
   digit_1 = 1; delay_ms(1); clear_digit();
   masking(digit[1]);
   digit_2 = 1; delay_ms(1); clear_digit();
   masking(digit[2]);
   digit_3 = 1; delay_ms(1); clear_digit();
   masking(digit[3]);
   digit_4 = 1; delay_ms(1); clear_digit();
}

void blink(short seg){
  if(seg == 0){
    masking(digit[0]);
    digit_1 = 1; delay_ms(1); clear_digit();
  }
  else if(seg == 1){
    masking(digit[1]);
    digit_2 = 1; delay_ms(1); clear_digit();
  }
  else if(seg == 2){
    masking(digit[2]);
    digit_3 = 1; delay_ms(1); clear_digit();
  }
  else if(seg == 3){
    masking(digit[3]);
    digit_4 = 1; delay_ms(1); clear_digit();
  }
}

void setup(){
  int de, x = 0;
  counter.full = 0;
  delay_1sec();
  
  while(1){
    key = kp_scan();
    if(key >= '0' && key <= '9') digit[x] = key - 48;
    if(key == '*') {
      delay_ms(300); 
      x++;
      if(x > 3) x = 0;
    }
    if(key == '#') break;
    
    for(de = 0; de < 100; de++){
      masking(digit[0]);
      digit_1 = 1; delay_ms(1); clear_digit();
      masking(digit[1]);
      digit_2 = 1; delay_ms(1); clear_digit();
      masking(digit[2]);
      digit_3 = 1; delay_ms(1); clear_digit();
      masking(digit[3]);
      digit_4 = 1; delay_ms(1); clear_digit();
    }
    for(de = 0; de < 300; de++) blink(x);
  }
  for(x = 0; x < 4; x++) digit[x] = digit[x] + 48;
  digit[4] = 0;
  countup.full = atoi(digit);
  EEPROM_write(2, countup.lsb);
  EEPROM_write(3, countup.msb);
}

void main() {
  kp_init();
  ADCON1 = 7;
  TRISA = 0x00;
  PORTA = 0x00;
  TRISB = 0x01;
  PORTB = 0x00;
  INTE_bit = 1;
  INTF_bit = 0;
  INTEDG_bit = 0;
  GIE_bit = 1;
  IRF = 0;
  counter.lsb = EEPROM_read(0);
  counter.msb = EEPROM_read(1);
  countup.lsb = EEPROM_read(2);
  countup.msb = EEPROM_read(3);
  
  while(1){
    key = kp_scan();
    if(key == '*') setup();
    if(key == '#'){
      relay_f = ~relay_f;
      delay_ms(300);
    }
    
    segment_int(counter.full);
    
    if(IRF && counter.full < countup.full) {
      if(relay_f) relay = 1;
      if(key == '5') counter.full--;
      else counter.full++;
      EEPROM_write(0, counter.lsb);
      EEPROM_write(1, counter.msb);
      IRF = 0;
    }
    else relay = 0;
    if(relay_f && counter.full < countup.full) relay = 1;
  }
}