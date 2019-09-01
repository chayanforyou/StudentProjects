#line 1 "D:/1. Electronics/Antor's corner/Aminul Sir/1. Auto 3 Relay switching/auto 3 relay switch.c"
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









bit auto_flag;
bit rly1_flag;
bit rly2_flag;
bit rly3_flag;

int delay;

void main(){
 adcon1 = 0b00000111;
 trisA = 0b000000;
 trisc = 0b00011110;
 portA = 0;
 lcd_init();
 lcd_cmd(_lcd_cursor_off);
 auto_flag = 0;

 lcd_out(1,1,"Mode: ");
 lcd_out(2,1,"R1:   R2:   R3:");

 while(1){
 if( RC1_bit  == 1){auto_flag =~ auto_flag; delay_ms(300);}

 start:
 if(auto_flag == 0){
 lcd_out(1,7,"Manual");

 if( RC2_bit  == 1){rly1_flag =~ rly1_flag; delay_ms(300);}
 if( RC4_bit  == 1){rly2_flag =~ rly2_flag; delay_ms(300);}
 if( RC3_bit  == 1){rly3_flag =~ rly3_flag; delay_ms(300);}

 if(rly1_flag == 0){
  RA0_bit  = 1;
 lcd_out(2,4,"1");
 }
 else{
  RA0_bit  = 0;
 lcd_out(2,4,"0");
 }

 if(rly2_flag == 0){
  RA1_bit  = 1;
 lcd_out(2,10,"1");
 }
 else{
  RA1_bit  = 0;
 lcd_out(2,10,"0");
 }

 if(rly3_flag == 0){
  RA2_bit  = 1;
 lcd_out(2,16,"1");
 }
 else{
  RA2_bit  = 0;
 lcd_out(2,16,"0");
 }
 }
 else{
 lcd_out(1,7,"Auto  ");

 for(delay=0;delay<=500;delay++){
  RA0_bit  = 1;  RA1_bit  = 0;  RA2_bit  = 0;
 lcd_out(2,4,"1");
 lcd_out(2,10,"0");
 lcd_out(2,16,"0");
 if( RC1_bit  == 1){auto_flag = 0; delay_ms(300); break;}
 delay_ms(10);
 }

  RA0_bit  = 0;  RA1_bit  = 0;  RA2_bit  = 0;
 if(auto_flag == 0)goto start;

 for(delay=0;delay<=500;delay++){
  RA0_bit  = 0;  RA1_bit  = 1;  RA2_bit  = 0;
 lcd_out(2,4,"0");
 lcd_out(2,10,"1");
 lcd_out(2,16,"0");
 if( RC1_bit  == 1){auto_flag = 0; delay_ms(300); break;}
 delay_ms(10);
 }

  RA0_bit  = 0;  RA1_bit  = 0;  RA2_bit  = 0;
 if(auto_flag == 0)goto start;

 for(delay=0;delay<=500;delay++){
  RA0_bit  = 0;  RA1_bit  = 0;  RA2_bit  = 1;
 lcd_out(2,4,"0");
 lcd_out(2,10,"0");
 lcd_out(2,16,"1");
 if( RC1_bit  == 1){auto_flag = 0; delay_ms(300); break;}
 delay_ms(10);
 }

  RA0_bit  = 0;  RA1_bit  = 0;  RA2_bit  = 0;

 }
 }

}
