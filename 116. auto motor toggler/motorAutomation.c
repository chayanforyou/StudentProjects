#define motor RC0_bit
#define motor_key RC1_bit
#define time_key RC3_bit
#define digit_1 RC4_bit
#define digit_2 RC5_bit
#define digit_3 RC6_bit
#define display PORTB
#define ON 1
#define OFF 0

const unsigned short anode[] = {192,249,164,176,153,146,130,248,128,144};
const unsigned short font[] = {192,142, 161};
                             // O,  F,   d

int x, ms = 0;
char adc, timeout, countdown, anime = 0;
bit timer_flag, motor_flag;

void clear(){
  digit_1 = OFF; digit_2 = OFF; digit_3 = OFF;
}

void show_off(){
  display = font[0];
  digit_1 = ON; delay_ms(1); clear();
  display = font[1];
  digit_2 = ON; delay_ms(1); clear();
  display = font[1];
  digit_3 = ON; delay_ms(1); clear();
}

void segment_byte(short value){
  char temp;
  temp = value / 10;
  display = anode[temp];
  digit_2 = ON; delay_ms(1); clear();
  temp = value % 10;
  display = anode[temp];
  digit_3 = ON; delay_ms(1); clear();
}

void read_time(){
  while(time_key){
    adc = adc_read(0);
    timeout = adc / 2.59;
    display = font[2];
    digit_1 = ON; delay_ms(1); clear();
    segment_byte(timeout);
  }
}

void animation(){
  switch(anime){
    case 0: display = 254; break;
    case 1: display = 253; break;
    case 2: display = 251; break;
    case 3: display = 247; break;
    case 4: display = 239; break;
    case 5: display = 223; break;
  }
  digit_1 = ON; delay_ms(1); clear();
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
      motor = 0;
      timer_flag = 0;
      ms = 0;
      if(time_key) read_time();
      show_off();
    }
    else{
      motor = 1;
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
        if(motor_key) break;
      }
      motor_flag = 0;
      while(motor_key);
    }
    if(motor_key) {
      motor_flag = ~motor_flag;
      delay_ms(300);
      while(motor_key);
    }
  }
}