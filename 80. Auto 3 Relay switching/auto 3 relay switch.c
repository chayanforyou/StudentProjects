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

#define relay_1 RA0_bit
#define relay_2 RA1_bit
#define relay_3 RA2_bit
#define auto_sw RC1_bit
#define sw_1 RC2_bit
#define sw_2 RC4_bit
#define sw_3 RC3_bit

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
    if(auto_sw == 1){auto_flag =~ auto_flag; delay_ms(300);}
  
  start:
    if(auto_flag == 0){
      lcd_out(1,7,"Manual");
      
      if(sw_1 == 1){rly1_flag =~ rly1_flag; delay_ms(300);}
      if(sw_2 == 1){rly2_flag =~ rly2_flag; delay_ms(300);}
      if(sw_3 == 1){rly3_flag =~ rly3_flag; delay_ms(300);}

      if(rly1_flag == 0){
        relay_1 = 1;
        lcd_out(2,4,"1");
      }
      else{
        relay_1 = 0;
        lcd_out(2,4,"0");
      }

      if(rly2_flag == 0){
        relay_2 = 1;
        lcd_out(2,10,"1");
      }
      else{
        relay_2 = 0;
        lcd_out(2,10,"0");
      }

      if(rly3_flag == 0){
        relay_3 = 1;
        lcd_out(2,16,"1");
      }
      else{
        relay_3 = 0;
        lcd_out(2,16,"0");
      }
    }
    else{
      lcd_out(1,7,"Auto  ");
      
      for(delay=0;delay<=500;delay++){
        relay_1 = 1; relay_2 = 0; relay_3 = 0;
        lcd_out(2,4,"1");
        lcd_out(2,10,"0");
        lcd_out(2,16,"0");
        if(auto_sw == 1){auto_flag = 0; delay_ms(300); break;}
        delay_ms(10);
      }
      
      relay_1 = 0; relay_2 = 0; relay_3 = 0;
      if(auto_flag == 0)goto start;
      
      for(delay=0;delay<=500;delay++){
        relay_1 = 0; relay_2 = 1; relay_3 = 0;
        lcd_out(2,4,"0");
        lcd_out(2,10,"1");
        lcd_out(2,16,"0");
        if(auto_sw == 1){auto_flag = 0; delay_ms(300); break;}
        delay_ms(10);
      }
      
      relay_1 = 0; relay_2 = 0; relay_3 = 0;
      if(auto_flag == 0)goto start;
      
      for(delay=0;delay<=500;delay++){
        relay_1 = 0; relay_2 = 0; relay_3 = 1;
        lcd_out(2,4,"0");
        lcd_out(2,10,"0");
        lcd_out(2,16,"1");
        if(auto_sw == 1){auto_flag = 0; delay_ms(300); break;}
        delay_ms(10);
      }
      
      relay_1 = 0; relay_2 = 0; relay_3 = 0;

    }
  }
  
}