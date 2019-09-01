#include "define.h"

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
  idle = 1; iron = 0; ironled = 0;
  while(1){
      lcd_out(2,1, "  Mannual Mode  ");
      adc_show(1,13);
      key[0] = get_key_press();
      if(key[0] == '#')break;
        if(key[0] == 'D'){
          idle =~ idle;
          iron =~ iron;
          ironled =~ ironled;
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
        idle = 1;
        iron = 0;
        ironled = 0;
        lcd_out(2,1, "    Iron OFF    ");
      }
      if(sensor < min_val){
        idle = 0;
        iron = 1;
        ironled = 1;
        lcd_out(2,1, "    Iron ON    ");
      }
  }
}