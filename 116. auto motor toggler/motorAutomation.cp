#line 1 "C:/Users/antor/Google Drive/Embedded Projects/Others/auto motor toggler/motorAutomation.c"










const unsigned short anode[] = {192,249,164,176,153,146,130,248,128,144};
const unsigned short font[] = {192,142, 161};


int x, ms = 0;
char adc, timeout, countdown, anime = 0;
bit timer_flag, motor_flag;

void clear(){
  RC4_bit  =  0 ;  RC5_bit  =  0 ;  RC6_bit  =  0 ;
}

void show_off(){
  PORTB  = font[0];
  RC4_bit  =  1 ; delay_ms(1); clear();
  PORTB  = font[1];
  RC5_bit  =  1 ; delay_ms(1); clear();
  PORTB  = font[1];
  RC6_bit  =  1 ; delay_ms(1); clear();
}

void segment_byte(short value){
 char temp;
 temp = value / 10;
  PORTB  = anode[temp];
  RC5_bit  =  1 ; delay_ms(1); clear();
 temp = value % 10;
  PORTB  = anode[temp];
  RC6_bit  =  1 ; delay_ms(1); clear();
}

void read_time(){
 while( RC3_bit ){
 adc = adc_read(0);
 timeout = adc / 2.59;
  PORTB  = font[2];
  RC4_bit  =  1 ; delay_ms(1); clear();
 segment_byte(timeout);
 }
}

void animation(){
 switch(anime){
 case 0:  PORTB  = 254; break;
 case 1:  PORTB  = 253; break;
 case 2:  PORTB  = 251; break;
 case 3:  PORTB  = 247; break;
 case 4:  PORTB  = 239; break;
 case 5:  PORTB  = 223; break;
 }
  RC4_bit  =  1 ; delay_ms(1); clear();
}

void InitTimer1(){
 T1CON = 0x21;
 TMR1IF_bit = 0;
 TMR1H = 0x3C;
 TMR1L = 0xB0;
 TMR1IE_bit = 1;
 INTCON = 0xC0;
}

void Interrupt(){
 if (TMR1IF_bit){
 TMR1IF_bit = 0;
 TMR1H = 0x3C;
 TMR1L = 0xB0;
 if(timer_flag) {ms++; anime++;}
 }
}

void main() {
 TRISC = 0x0A; PORTC = 0x00;
 TRISB = 0x00; PORTB = 0x00;
 InitTimer1();
 timer_flag = 0;
 motor_flag = 0;
 adc = adc_read(0);
 timeout = adc / 2.59;

 while(1){
 if(motor_flag == 0){
  RC0_bit  = 0;
 timer_flag = 0;
 ms = 0;
 if( RC3_bit ) read_time();
 show_off();
 }
 else{
  RC0_bit  = 1;
 timer_flag = 1;
 countdown = timeout;
 while(countdown){
 if(ms == 600){
 ms = 0;
 countdown--;
 }
 if(anime > 5) anime = 0;
 animation();
 segment_byte(countdown);
 if( RC1_bit ) break;
 }
 motor_flag = 0;
 while( RC1_bit );
 }
 if( RC1_bit ) {
 motor_flag = ~motor_flag;
 delay_ms(300);
 while( RC1_bit );
 }
 }
}
