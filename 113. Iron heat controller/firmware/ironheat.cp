#line 1 "E:/Electronics/Abrar's corner/Momin Bhai/Iron heat/firmware/ironheat.c"
#line 1 "e:/electronics/abrar's corner/momin bhai/iron heat/firmware/define.h"
sbit LCD_RS at RB2_bit;
sbit LCD_EN at RB3_bit;
sbit LCD_D7 at RB7_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D4 at RB4_bit;
sbit LCD_RS_Direction at TRISB2_bit;
sbit LCD_EN_Direction at TRISB3_bit;
sbit LCD_D7_Direction at TRISB7_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB4_bit;





char keypadPort at PORTC;
unsigned short kp;

void device_init(){
 ADCON1 = 0x0E;
 trisa = 0x01;
 porta = 0x00;
 lcd_init();
 lcd_cmd(_lcd_clear);
 lcd_cmd(_lcd_cursor_off);
}

unsigned short convert(){
 switch (kp){
 case 1: kp = 49; break;
 case 2: kp = 50; break;
 case 3: kp = 51; break;
 case 4: kp = 65; break;
 case 5: kp = 52; break;
 case 6: kp = 53; break;
 case 7: kp = 54; break;
 case 8: kp = 66; break;
 case 9: kp = 55; break;
 case 10: kp = 56; break;
 case 11: kp = 57; break;
 case 12: kp = 67; break;
 case 13: kp = 42; break;
 case 14: kp = 48; break;
 case 15: kp = 35; break;
 case 16: kp = 68; break;
 }
 return kp;
}

unsigned short get_key_click(){
 kp = 0;
 do{
 kp = Keypad_Key_click();
 }while(!kp);
 convert();
}

unsigned short get_key_press(){
 kp = 0;
 kp = Keypad_Key_press();
 convert();
}

int get_adc(){
 int adc = adc_read(0);
 delay_ms(500);
 return adc;
}

void adc_show(short x, short y){
 char temp[5];
 int adc = get_adc();
 temp[0] = adc/1000 + 48;
 temp[1] = (adc/100)%10 + 48;
 temp[2] = (adc/10)%10 + 48;
 temp[3] = adc%10 + 48;
 lcd_out(x,y, temp);
}
#line 3 "E:/Electronics/Abrar's corner/Momin Bhai/Iron heat/firmware/ironheat.c"
char key[2];
char minstr[4],maxstr[4];
short state = 0;

int min_val, max_val;
int sensor;

void clean_all(){
 short x;
 for(x=0;x<5;x++){
 minstr[x] = 0;
 }
 for(x=0;x<5;x++){
 maxstr[x] = 0;
 }
}

void calbi(){
 short x;
 min_val = 0, max_val= 0;
 lcd_cmd(_lcd_clear);
 lcd_cmd(_LCD_BLINK_CURSOR_ON);
 clean_all();
 lcd_out(1,1, "Min.Val:");
 for(x=0;x<3;x++){
 recheck1:
 minstr[x] = get_key_click();
 if(minstr[x] < 48 | minstr[x] > 57)goto recheck1;
 min_val = (100 * (minstr[0] - 48)) + (10 * (minstr[1] - 48)) + (minstr[2] - 48);
 lcd_out(1,10,minstr);
 delay_ms(100);
 }
 lcd_out(2,1,"Wait...");
 delay_ms(1000);
 lcd_cmd(_lcd_clear);
 lcd_out(1,1, "Max.Val:");
 for(x=0;x<3;x++){
 recheck2:
 maxstr[x] = get_key_click();
 if(maxstr[x] < 48 | maxstr[x] > 57)goto recheck2;
 max_val = (100 * (maxstr[0] - 48)) + (10 * (maxstr[1] - 48)) + (maxstr[2] - 48);
 lcd_out(1,10,maxstr);
 delay_ms(100);
 }
 lcd_out(2,1,"Wait...");
 delay_ms(1000);
 lcd_cmd(_lcd_clear);
 lcd_cmd(_lcd_cursor_off);
}

void mannual(){
  porta.f1  = 1;  porta.f2  = 0;  porta.f3  = 0;
 while(1){
 lcd_out(2,1, "  Mannual Mode  ");
 adc_show(1,13);
 key[0] = get_key_press();
 if(key[0] == '#')break;
 if(key[0] == 'D'){
  porta.f1  =~  porta.f1 ;
  porta.f2  =~  porta.f2 ;
  porta.f3  =~  porta.f3 ;
 delay_ms(500);
 }
 }
 lcd_cmd(_lcd_clear);
}

void main() {
 device_init();
 calbi();

 while(1){
 lcd_out(1,1, "SensorValue:");
 adc_show(1,13);
 sensor = get_adc();
 key[0] = get_key_press();
 if(key[0] == 'A') calbi();
 if(key[0] == '*') mannual();
 if(sensor > max_val){
  porta.f1  = 1;
  porta.f2  = 0;
  porta.f3  = 0;
 lcd_out(2,1, "    Iron OFF    ");
 }
 if(sensor < min_val){
  porta.f1  = 0;
  porta.f2  = 1;
  porta.f3  = 1;
 lcd_out(2,1, "    Iron ON    ");
 }
 }
}
