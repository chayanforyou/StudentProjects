#define digit_1 RC0_bit
#define digit_2 RC1_bit
#define digit_3 RC2_bit
#define digit_4 RC3_bit

#define SH RA0_bit
#define DS RA1_bit
#define ST RA2_bit

char anode[] = {192, 249, 164, 176, 153, 146, 130, 248, 128, 144};

unsigned int counter = 10;
unsigned int delay;

void transfer_data(unsigned short temp){   //Transfer Data via 74HC595
   temp = anode[temp];
   DS = temp.b7; SH = 1; SH = 0;
   DS = temp.b6; SH = 1; SH = 0;
   DS = temp.b5; SH = 1; SH = 0;
   DS = temp.b4; SH = 1; SH = 0;
   DS = temp.b3; SH = 1; SH = 0;
   DS = temp.b2; SH = 1; SH = 0;
   DS = temp.b1; SH = 1; SH = 0;
   DS = temp.b0; SH = 1; SH = 0;
   ST = 1; ST = 0; DS = 0;
}

void clear_digit(){
  digit_1 = 0; digit_2 = 0;
  digit_3 = 0; digit_4 = 0;
}

void show_segment(unsigned int count){
   unsigned short digit[4];
   digit[0] = count / 1000;
   digit[1] = (count % 1000) / 100;
   digit[2] = (count % 100) / 10;
   digit[3] = count % 10;
   
   transfer_data(digit[0]);
   digit_1 = 1; delay_ms(1); clear_digit();
   transfer_data(digit[1]);
   digit_2 = 1; delay_ms(1); clear_digit();
   transfer_data(digit[2]);
   digit_3 = 1; delay_ms(1); clear_digit();
   transfer_data(digit[3]);
   digit_4 = 1; delay_ms(1); clear_digit();
}

void main() {
   ANSEL = 0x00;
   CMCON = 0x07;
   TRISA = 0x00; PORTA = 0x00;
   TRISC = 0x00; PORTC = 0x00;
   
   while(1){
      for(delay = 0; delay < 250; delay++) show_segment(counter);
      counter--;
   }
}