#line 1 "C:/Users/antor/Google Drive/Embedded Projects/Rifat Bhai/Protector Circuit/firmware/protector.c"
#line 13 "C:/Users/antor/Google Drive/Embedded Projects/Rifat Bhai/Protector Circuit/firmware/protector.c"
char anode[] = {192, 249, 164, 176, 153, 146, 130, 248, 128, 144};
char dly[] = {161, 199, 145};

void clear_display(){
  RC4_bit  = 0;  RC3_bit  = 0;
  RC2_bit  = 0;  RC7_bit  = 0;
  RC6_bit  = 0;  RC5_bit  = 0;
}

void show_display(char flag, int dta){
 char digit[3], x;
 digit[0] = dta / 100;
 digit[1] = (dta % 100) / 10;
 digit[2] = dta % 10;
 for(x = 0; x < 3; x++){
 if(flag == 1){
 if(x == 0)  RC4_bit  = 1;
 if(x == 1)  RC3_bit  = 1;
 if(x == 2)  RC2_bit  = 1;
 }
 else if(flag == 2){
 if(x == 0)  RC7_bit  = 1;
 if(x == 1)  RC6_bit  = 1;
 if(x == 2)  RC5_bit  = 1;
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
 if(check_delay_pin()) delay_s =  300 ;
 else delay_s =  30 ;
 for(x = delay_s; x >= 0; x--){
 for(y = 0; y <  20 ; y++){
 show_display(1, 500);
 show_display(2, x);
 }
 }
}

void main() {
 ADCON1 = 0x04;
 TRISA = 0x03;
 TRISB = 0x00;
 TRISC = 0x00;
  RA5_bit  = 0;
 delay_control();

 while(1){
 char x, adc = 0;
 adc = adc_read(1);
  RA5_bit  = 1;
 for(x = 0; x < 200; x++){
 show_display(1, adc);
 show_display(2, 220);
 }
 }
}
