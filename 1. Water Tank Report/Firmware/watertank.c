#include "GSM_sms.h"
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

char adc,old_adc; txt[5];

#define level1 portc.f1
#define level2 portc.f2
#define level3 portc.f3

char number[] = "01720054584";

void title(){
  lcd_out(1,1,"Water report SYS");
}

void show_sending(){
  lcd_out(2,1,"SMS Sending..");
}

void show_level(){
  lcd_cmd(_lcd_clear);
  title();
  lcd_out(2,1,"Level: ");
}

void main() {
  lcd_init();
  lcd_cmd(_lcd_clear);
  lcd_cmd(_lcd_cursor_off);
  trisc = 0x8E; portc = 0;
  uart1_init(9600);
  title();
  
  while(1){
    if(!level1){
     show_sending();
     send_sms(number, "Water Level too LOW.");
     while(!level1){
       show_level();
       lcd_out(2,8,"01");
       if(level1)break;
       if(!level2){
         show_sending();
         send_sms(number, "Water Level Middle.");
         while(!level2){
           show_level();
           lcd_out(2,8,"02");
           if(level2)break;
           if(!level3){
             show_sending();
             send_sms(number, "Water Level High.");
             while(!level3){
               show_level();
               lcd_out(2,8,"03");
               if(level3)break;
             }
           }
         }
       }
     }
    }
    title();
    if(!level1 & !level2 & !level3)lcd_out(2,1,"None     ");
  }
}