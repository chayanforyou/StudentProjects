#line 1 "C:/Users/antor/Google Drive/Embedded Projects/Rifat Bhai/60v charger autocut/firmware/converter.c"








int in_adc, delay, time;
unsigned short out_adc, temp_adc;
bit mode_f, output_f;

char anode[] = {192, 249, 164, 176, 153, 146, 130, 248, 128, 144};

void clear_display(){
  RC6_bit  = 0;  RC5_bit  = 0;  RC4_bit  = 0;
}

void segment(int dta){
 char digit[3], x;
 digit[0] = dta / 100;
 digit[1] = (dta % 100) / 10;
 digit[2] = dta % 10;
 for(x = 0; x < 3; x++){
 if(x == 0)  RC6_bit  = 1;
 if(x == 1)  RC5_bit  = 1;
 if(x == 2)  RC4_bit  = 1;
 PORTB = anode[digit[x]];
 delay_ms(1);
 clear_display();
 }
  RC5_bit  = 1;
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
 if(x == 0)  RC6_bit  = 1;
 if(x == 1)  RC5_bit  = 1;
 if(x == 2)  RC4_bit  = 1;
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
 if( RC7_bit  == 1){mode_f =~ mode_f; delay_ms(300);}
 if(in_adc > 576) { RC0_bit  = 1; output_f = 1;}
 if(in_adc < 490) { RC0_bit  = 0; output_f = 0;}
 if(output_f) time = 500;
 else time = 100;
 if(temp_adc > 150)  RC2_bit  = 1;
 if(temp_adc < 50)  RC2_bit  = 0;
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
  RC1_bit  = 0;
 for(delay = 0; delay < time; delay++) segment(in_adc);
 if(output_f) for(delay = 0; delay < time; delay++) show_full();
 }
 while(mode_f == 1){
 system();
  RC1_bit  = 1;
 for(delay = 0; delay < 100; delay++) segment(out_adc);
 }
 }
}
