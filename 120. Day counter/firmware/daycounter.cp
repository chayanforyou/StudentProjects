#line 1 "D:/1. Electronics/Antor's corner/Others/Day counter RTC/firmware/daycounter.c"








char cathode[] = {63, 6, 91, 79, 102, 109, 125, 7, 127, 111};
char select_digit[] = {1, 2, 4, 8, 16, 32, 64, 128};
bit flag; char count = 0;



unsigned short day = 0, hour = 0, minute = 0, second = 0;
char digit[8];

void InitTimer1(){
 T1CON = 0x31;
 TMR1IF_bit = 0;
 TMR1H = 0x0B;
 TMR1L = 0xDC;
 TMR1IE_bit = 1;
 INTCON = 0xC0;
}

void Interrupt(){
 if (TMR1IF_bit){
 TMR1IF_bit = 0;
 TMR1H = 0x0B;
 TMR1L = 0xDC;
 count++;
 if(count == 10) {count = 0; flag = 1;}

 }
}

void convert2digit(){
 digit[0] = day / 10;
 digit[1] = day % 10;
 digit[2] = hour / 10;
 digit[3] = hour % 10;
 digit[4] = minute / 10;
 digit[5] = minute % 10;
 digit[6] = second / 10;
 digit[7] = second % 10;
}

void show_all_digit(){
 char x, y;
 convert2digit();

 for(x=0;x<8;x++){
  PORTC  =~ select_digit[x];
  PORTB  = cathode[digit[x]];
 delay_ms(1);
  PORTB  =  0x00; ;
 }
}

void time_set(){
 char x;
 for(x=0;x<8;x+=2){
 while( RA1_bit  == 0){
 convert2digit();
  PORTC  =~ select_digit[x];
  PORTB  = cathode[digit[x]];
 delay_ms(1);
  PORTB  =  0x00; ;

 convert2digit();
  PORTC  =~ select_digit[x+1];
  PORTB  = cathode[digit[x+1]];
 delay_ms(1);
  PORTB  =  0x00; ;

 if(x == 0){
 if(day == 0 &&  RA3_bit ) {day = 99; delay_ms(500);}
 if( RA2_bit ) {day++; delay_ms(500);}
 if( RA3_bit ) {day--; delay_ms(500);}
 if(day == 100) day = 0;
 }
 if(x == 2){
 if(hour == 0 &&  RA3_bit ) {hour = 23; delay_ms(500);}
 if( RA2_bit ) {hour++; delay_ms(500);}
 if( RA3_bit ) {hour--; delay_ms(500);}
 if(hour == 24) hour = 0;
 }
 if(x == 4){
 if(minute == 0 &&  RA3_bit ) {minute = 59; delay_ms(500);}
 if( RA2_bit ) {minute++; delay_ms(500);}
 if( RA3_bit ) {minute--; delay_ms(500);}
 if(minute == 60) minute = 0;
 }
 if(x == 6){
 if(second == 0 &&  RA3_bit ) {second = 59; delay_ms(500);}
 if( RA2_bit ) {second++; delay_ms(500);}
 if( RA3_bit ) {second--; delay_ms(500);}
 if(second == 60) second = 0;
 }
 }
 delay_ms(1000);
 }
 if(second == 0) {
 second = 60;
 if(minute > 0) minute--;
 }
}

void main() {
 ADCON1 = 7;
 TRISA = 0b001111;
 TRISB = 0x00; TRISC = 0x00;
 PORTB = 0x00; PORTC = 0x00;
 InitTimer1();
 flag = 0;

 while(1){
 while ( RA0_bit  == 0){
 show_all_digit();
 }
 time_set();

 while (day != 0 || hour != 0 || minute != 0 || second != 0) {
 show_all_digit();
 if(flag){
 second--;
 flag = 0;
 }
 if(second == 0 && minute != 0){
 second = 59;
 minute--;
 }
 if(minute == 0 && hour != 0){
 minute = 59;
 hour--;
 }
 if(hour == 0 && day != 0){
 hour = 23;
 day--;
 }
 }
  RA5_bit  = 1;
 delay_ms(5000);
  RA5_bit  = 0;
 }
}
