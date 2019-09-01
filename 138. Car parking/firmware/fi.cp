#line 1 "D:/1. Electronics/Abrar's corner/Raktim Sir/Car parking/firmware/fi.c"






sbit LCD_RS at RB1_bit;
sbit LCD_EN at RB2_bit;
sbit LCD_D4 at RB4_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D7 at RB7_bit;

sbit LCD_RS_Direction at TRISB1_bit;
sbit LCD_EN_Direction at TRISB2_bit;
sbit LCD_D4_Direction at TRISB4_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D7_Direction at TRISB7_bit;



void main() {
 lcd_init();
 lcd_cmd(_lcd_cursor_off);
 adcon1 = 0x07;
 trisa = 0x00; porta = 0x00;
 trisc = 0x0f; portc = 0x00;
 lcd_out(1,1,"Car1:");
 lcd_out(1,11,"C2:");
 lcd_out(2,1,"Car3:");
 lcd_out(2,11,"C4:");

 while(1){
  porta  = 0b000001;
 if( portc.f0  == 0){lcd_out(1,6,"YES");portc.f7 = 1;}
 else{lcd_out(1,6,"NO ");portc.f7 = 0;}
 delay_ms(200);
  porta  = 0b000010;
 if( portc.f1  == 0){lcd_out(1,14,"YES");portc.f6 = 1;}
 else{lcd_out(1,14,"NO  ");portc.f6 = 0;}
 delay_ms(200);
  porta  = 0b000100;
 if( portc.f2  == 0){lcd_out(2,6,"YES");portc.f5 = 1;}
 else{lcd_out(2,6,"NO ");portc.f5 = 0;}
 delay_ms(200);
  porta  = 0b001000;
 if( portc.f3  == 0){lcd_out(2,14,"YES");portc.f4 = 1;}
 else{lcd_out(2,14,"NO  ");portc.f4 = 0;}
 delay_ms(200);
 }
}
