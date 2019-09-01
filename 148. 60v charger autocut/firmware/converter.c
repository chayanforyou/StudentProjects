#define output RC0_bit
#define status RC1_bit
#define fan RC2_bit
#define mode RC7_bit
#define digit_1 RC6_bit
#define digit_2 RC5_bit
#define digit_3 RC4_bit

int in_adc, delay, time;
unsigned short out_adc, temp_adc;
bit mode_f, output_f;

char anode[] = {192, 249, 164, 176, 153, 146, 130, 248, 128, 144};

void clear_display(){
  digit_1 = 0; digit_2 = 0; digit_3 = 0;
}

void segment(int dta){
  char digit[3], x;
  digit[0] = dta / 100;
  digit[1] = (dta % 100) / 10;
  digit[2] = dta % 10;
  for(x = 0; x < 3; x++){
    if(x == 0) digit_1 = 1;
    if(x == 1) digit_2 = 1;
    if(x == 2) digit_3 = 1;
    PORTB = anode[digit[x]];
    delay_ms(1);
    clear_display();
  }
  digit_2 = 1;
  PORTB = 127;
  delay_ms(1);
  clear_display();
}

void show_full(){
  char digit[3], x;
  digit[0] = 142;
  digit[1] = 193;
  digit[2] = 199;
  clear_display();
  for(x = 0; x < 3; x++){
    if(x == 0) digit_1 = 1;
    if(x == 1) digit_2 = 1;
    if(x == 2) digit_3 = 1;
    PORTB = digit[x];
    delay_ms(1);
    clear_display();
  }
}

void read_adc(){
  in_adc = adc_read(0);
  out_adc = adc_read(2);
  temp_adc = adc_read(4);
  in_adc = (in_adc * 0.407) * 10;
}

void system(){
  read_Adc();
  if(mode == 1){mode_f =~ mode_f; delay_ms(300);}
  if(in_adc > 576) {output = 1; output_f = 1;}        //576 = 57.6v
  if(in_adc < 490) {output = 0; output_f = 0;}        //490 = 49.0v
  if(output_f) time = 500;                            //interchange delay
  else time = 100;
  if(temp_adc > 150) fan = 1;        //adjust fan ON  [(read volt x 255) / 5]
  if(temp_adc < 50) fan = 0;         //adjust fan OFF [(read volt x 255) / 5]
}

void main() {
  TRISB = 0x00;
  TRISC = 0x80;
  PORTB = 0x00;
  PORTC = 0x00;
  mode_f = 0;

  while(1){
    while(mode_f == 0){
      system();
      status = 0;
      for(delay = 0; delay < time; delay++) segment(in_adc);
      if(output_f) for(delay = 0; delay < time; delay++) show_full();
    }
    while(mode_f == 1){
      system();
      status = 1;
      for(delay = 0; delay < 100; delay++) segment(out_adc);
    }
  }
}