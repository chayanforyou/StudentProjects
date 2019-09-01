#line 1 "D:/1. Electronics/Abrar's corner/Tanvir Bhai/Projects/1. Water Tank Report/Firmware/watertank.c"
#line 1 "d:/1. electronics/abrar's corner/tanvir bhai/projects/1. water tank report/firmware/gsm_sms.h"
void nl_cr(){
 uart1_write(13);
 uart1_write(10);
}

void send_sms(char num[11], char text[25]){
 uart1_write_text("AT+CMGF=1");
 nl_cr();
 delay_ms(200);
 uart1_write_text("AT+CMGS= ");
 uart1_write(34);
 uart1_write_text(num);
 uart1_write(34);
 nl_cr();
 delay_ms(200);
 uart1_write_text(text);
 delay_ms(200);
 uart1_write(0x1A);
 delay_ms(5000);
 nl_cr();
}
#line 2 "D:/1. Electronics/Abrar's corner/Tanvir Bhai/Projects/1. Water Tank Report/Firmware/watertank.c"
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
 delay_ms(10000);
 title();

 while(1){
 if(! portc.f1 ){
 show_sending();
 send_sms(number, "Water Level too LOW.");
 while(! portc.f1 ){
 show_level();
 lcd_out(2,8,"01");
 if( portc.f1 )break;
 if(! portc.f2 ){
 show_sending();
 send_sms(number, "Water Level Middle.");
 while(! portc.f2 ){
 show_level();
 lcd_out(2,8,"02");
 if( portc.f2 )break;
 if(! portc.f3 ){
 show_sending();
 send_sms(number, "Water Level High.");
 while(! portc.f3 ){
 show_level();
 lcd_out(2,8,"03");
 if( portc.f3 )break;
 }
 }
 }
 }
 }
 }
 title();
 if(! portc.f1  & ! portc.f2  & ! portc.f3 )lcd_out(2,1,"None     ");
 }
}
