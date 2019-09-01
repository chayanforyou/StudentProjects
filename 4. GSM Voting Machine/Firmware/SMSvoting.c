#include "GSM_SMS_read.h"
#define voting PORTC.F4
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

char contact1[] = "+8801720054584";
char contact2[] = "+8801715006119";
char contact3[] = "+8801515603906";
char contact4[] = "+8801521438070";

short can_A, can_B, can_C, can_D;

char dec2str(char value, char x, char y){
  char txt[4];
  txt[0] = (value / 100) + 48;
  txt[1] = ((value % 100) / 10) + 48;
  txt[2] = (value % 10) + 48;
  lcd_chr(x,y,txt[0]);
  lcd_chr(x,y+1,txt[1]);
  lcd_chr(x,y+2,txt[2]);
}

void default_lcd(){
  lcd_out(1,1," SMS Voting Machine ");
  lcd_out(2,1,"Can_A:");
  lcd_out(2,12,"Can_B:");
  lcd_out(3,1,"Can_C:");
  lcd_out(3,12,"Can_D:");
}

void main() {
  trisc.f4 = 1;
  LCD_init();
  LCD_cmd(_lcd_cursor_off);
  can_A = 0; can_B = 0; can_C = 0; can_D = 0;
  uart1_init(9600);
  LCD_cmd(_lcd_clear);
  default_lcd();
  delay_ms(10000);
  GSM_init();
  
  while(1){
    dec2str(can_A, 2, 7);
    dec2str(can_B, 2, 18);
    dec2str(can_C, 3, 7);
    dec2str(can_D, 3, 18);
    check_sms();
  }
}