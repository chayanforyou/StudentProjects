#line 1 "C:/Users/antor/Google Drive/Embedded Projects/STechBD/Projects/Second Counter/Firmware/second counter.c"









char anode[] = {192, 249, 164, 176, 153, 146, 130, 248, 128, 144};

unsigned int counter = 10;
unsigned int delay;

void transfer_data(unsigned short temp){
 temp = anode[temp];
  RA1_bit  = temp.b7;  RA0_bit  = 1;  RA0_bit  = 0;
  RA1_bit  = temp.b6;  RA0_bit  = 1;  RA0_bit  = 0;
  RA1_bit  = temp.b5;  RA0_bit  = 1;  RA0_bit  = 0;
  RA1_bit  = temp.b4;  RA0_bit  = 1;  RA0_bit  = 0;
  RA1_bit  = temp.b3;  RA0_bit  = 1;  RA0_bit  = 0;
  RA1_bit  = temp.b2;  RA0_bit  = 1;  RA0_bit  = 0;
  RA1_bit  = temp.b1;  RA0_bit  = 1;  RA0_bit  = 0;
  RA1_bit  = temp.b0;  RA0_bit  = 1;  RA0_bit  = 0;
  RA2_bit  = 1;  RA2_bit  = 0;  RA1_bit  = 0;
}

void clear_digit(){
  RC0_bit  = 0;  RC1_bit  = 0;
  RC2_bit  = 0;  RC3_bit  = 0;
}

void show_segment(unsigned int count){
 unsigned short digit[4];
 digit[0] = count / 1000;
 digit[1] = (count % 1000) / 100;
 digit[2] = (count % 100) / 10;
 digit[3] = count % 10;

 transfer_data(digit[0]);
  RC0_bit  = 1; delay_ms(1); clear_digit();
 transfer_data(digit[1]);
  RC1_bit  = 1; delay_ms(1); clear_digit();
 transfer_data(digit[2]);
  RC2_bit  = 1; delay_ms(1); clear_digit();
 transfer_data(digit[3]);
  RC3_bit  = 1; delay_ms(1); clear_digit();
}

void main() {
 ANSEL = 0x00;
 CMCON = 0x07;
 TRISA = 0x00; PORTA = 0x00;
 TRISC = 0x00; PORTC = 0x00;

 while(1){
 for(delay = 0; delay < 250; delay++) show_segment(counter);
 counter--;
 if(counter < 0) counter = 0;
 }
}
