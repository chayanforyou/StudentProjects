#line 1 "C:/Users/hr_hr/Desktop/AC Measure/MyProject.c"

sbit LCD_RS at RB2_bit;
sbit LCD_EN at RB3_bit;
sbit LCD_D4 at RB4_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D7 at RB7_bit;

sbit LCD_RS_Direction at TRISB2_bit;
sbit LCD_EN_Direction at TRISB3_bit;
sbit LCD_D4_Direction at TRISB4_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D7_Direction at TRISB7_bit;








char value[5], volt[4], voltage;
char adc_60,adc_100;
int amp_60, amp_100, amp;



void show_value(int v){
 value[0] = v / 1000 + 48;
 value[1] = (v % 1000) / 100 + 48;
 value[2] = (v % 100) / 10 + 48;
 value[3] = v % 10 + 48;
 value[4] = 0;
 lcd_out(1,14, value);
 return;
}

void show_relay(int v, char r, char c){
 value[0] = v / 1000 + 48;
 value[1] = (v % 1000) / 100 + 48;
 value[2] = (v % 100) / 10 + 48;
 value[3] = v % 10 + 48;
 value[4] = 0;
 lcd_out(r,c, value);
 return;
}

int check_60(){

 if(adc_60 < 5) return amp_60 = 0;

 if(adc_60 > 8 && adc_60 < 12){
 amp_60 = 272*1;
 return amp_60;
 }
 else if( adc_60 > 38 && adc_60 < 45){
 amp_60 = 272*2;
 return amp_60;
 }
 else if( adc_60 > 65 && adc_60 < 72){
 amp_60 = 272*3;
 return amp_60;
 }
 else if( adc_60 > 85 && adc_60 < 95){
 amp_60 = 272*4;
 return amp_60;
 }
}

int check_100(){
 if(adc_100 < 5) return amp_100 = 0;

 if(adc_100 > 20 && adc_100 < 30 ){
 amp_100 = 450*1;
 return amp_100;
 }
 else if(adc_100 > 65 && adc_100 < 75){
 amp_100 = 450*2;
 return amp_100;
 }
 else if(adc_100 > 90 && adc_100 < 100){
 amp_100 = 450*3;
 return amp_100;
 }
 else if(adc_100 > 110 && adc_100 < 125){
 amp_100 = 450*4;
 return amp_100;
 }
}

void main() {
 TRISC = 0;
 PORTC = 255;
 lcd_init();
 lcd_cmd(_lcd_cursor_off);
 lcd_out(1,1, "AC:");
 lcd_out(1,8,"V");
 lcd_out(1,11,"I:");
 lcd_out(1,19,"mA");
 lcd_out(2,1,"R1: HIGH");
 lcd_out(2,11,"R4:");
 lcd_out(3,1,"R2:");
 lcd_out(3,11,"R5:");
 lcd_out(4,1,"R3:");

 while(1){
 adc_60 = adc_read(0);
 adc_100 = adc_read(1);
#line 119 "C:/Users/hr_hr/Desktop/AC Measure/MyProject.c"
 voltage = 219 - (value[3] - 48);
 volt[0] = voltage / 100 + 48;
 volt[1] = (voltage % 100) / 10 + 48;
 volt[2] = voltage % 10 + 48;
 volt[3] = 0;
 lcd_out(1,5, volt);
 delay_ms(300);

 check_60();
 check_100();
 amp = amp_100 + amp_60;
 show_value(amp);

 if( amp > 1100 && amp < 1600){
 if( RC1_bit  == 1) show_relay(amp,3,5);
  RC1_bit  = 0;
 }
 else{
  RC1_bit  = 1;
 lcd_out(3,5,"HIGH");
 }

 if( amp > 1600 && amp < 2100){
 if( RC2_bit  == 1) show_relay(amp,4,5);
  RC2_bit  = 0;
 }
 else{
  RC2_bit  = 1;
 lcd_out(4,5,"HIGH");
 }

 if( amp > 2100 && amp < 2800){
 if( RC3_bit  == 1) show_relay(amp,2,15);
  RC3_bit  = 0;
 }
 else{
  RC3_bit  = 1;
 lcd_out(2,15,"HIGH");
 }

 if( amp > 2800){
 if( RC4_bit  == 1) show_relay(amp,3,15);
  RC4_bit  = 0;
 }
 else{
  RC4_bit  = 1;
 lcd_out(3,15,"HIGH");
 }

 }
}
