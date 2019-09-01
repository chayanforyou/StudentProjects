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

#define up_key RB1_bit
#define setup_key RB0_bit
#define down_key RC7_bit
#define buzzer RC6_bit
#define tmp1_rly RC0_bit
#define tmp2_rly RC1_bit
#define hum1_rly RC2_bit
#define hum2_rly RC3_bit
#define tmr_rly1 RC4_bit
#define tmr_rly2 RC5_bit
#include "DHT11.h"

unsigned int dht11_sense, mm, temp1, temp2;
unsigned short humidity1, humidity2, mm_H, mm_L;
unsigned short temp1_alart, temp2_alart, humidity1_alart, humidity2_alart;
short ss, t_flag, x = 0;
bit sec_flag;

void InitTimer0(){
  OPTION_REG = 0x87;
  TMR0 = 61;
  INTCON = 0xA0;
}

void Interrupt(){
  if (TMR0IF_bit){
    TMR0IF_bit = 0;
    TMR0 = 61;
    if(t_flag){
      x++;
      if(x == 100) {sec_flag = 1; x = 0;}
    }
  }
}

void read_temp1(){
  temp1 = adc_read(0);
  temp1 = (temp1 * 0.004887) * 100;
}

void read_temp2(){
  temp2 = adc_read(1);
  temp2 = (temp2 * 0.004887) * 100;
}

void lcd_out_short(short x, short y, unsigned short num){
  char digit[4];
  digit[0] = num / 100 + 48;
  digit[1] = (num % 100) / 10 + 48;
  digit[2] = num % 10 + 48;
  digit[3] = 0;
  lcd_out(x,y, digit);
}

void lcd_out_int(short x, short y, unsigned int num){
  char digit[4];
  digit[0] = num / 100 + 48;
  digit[1] = (num % 100) / 10 + 48;
  digit[2] = num % 10 + 48;
  digit[3] = 0;
  lcd_out(x,y, digit);
}

void lcd_out_2digit(short x, short y, unsigned short num){
  char digit[3];
  digit[0] = (num % 100) / 10 + 48;
  digit[1] = num % 10 + 48;
  digit[2] = 0;
  lcd_out(x,y, digit);
}

void setup(){
  temp1_alart = EEPROM_read(0);
  temp2_alart = EEPROM_read(1);
  humidity1_alart = EEPROM_read(2);
  humidity2_alart = EEPROM_read(3);
  mm_H = EEPROM_read(4);
  mm_L = EEPROM_read(5);
  mm = (mm_H << 8) + mm_L;
  ss = EEPROM_read(6);
  lcd_cmd(_lcd_clear);
  delay_1sec();
  
  lcd_out(1,1, "Timer setup:");
  lcd_out(2,9, "MM");
  while(!setup_key){
    lcd_out_int(2,1, mm);
    lcd_out(2,4, ":");
    lcd_out_2digit(2,5, ss);
    
    if(up_key) mm++;
    if(mm > 900) mm = 0;
    if(down_key) mm--;
    
    delay_ms(300);
  }
  mm_H = mm >> 8;
  mm_L = mm;
  EEPROM_write(4, mm_H);
  EEPROM_write(5, mm_L);
  delay_ms(500);
  
  lcd_out(2,9, "SS");
  while(!setup_key){
    lcd_out_int(2,1, mm);
    lcd_out(2,4, ":");
    lcd_out_2digit(2,5, ss);

    if(up_key) ss++;
    if(ss > 59) ss = 0;
    if(down_key) ss--;
    if(ss < 0) ss = 59;
    
    delay_ms(300);
  }
  EEPROM_write(6, ss);
  delay_ms(500);
  
  while(!setup_key){
    lcd_out_int(2,1, mm);
    lcd_out(2,4, ":");
    lcd_out_2digit(2,5, ss);
    
    if(t_flag == 1) lcd_out(2,13, "ON ");
    else  lcd_out(2,13, "OFF");

    if(up_key) {
      if(t_flag == 1) t_flag = 0;
      else  t_flag = 1;
    }
    
    delay_ms(300);
  }
  EEPROM_write(7, t_flag);
  delay_ms(500);
  
  lcd_cmd(_lcd_clear);
  lcd_out(1,1, "Temp 1 limit:");
  while(!setup_key){
    lcd_out_short(2,1, temp1_alart);
    lcd_chr(2,4, (char)223);
    lcd_out(2,5, "C");

    if(up_key) temp1_alart++;
    if(temp1_alart > 100) temp1_alart = 0;
    if(down_key) temp1_alart--;
    
    delay_ms(300);
  }
  EEPROM_write(0, temp1_alart);
  delay_ms(500);
  
  lcd_cmd(_lcd_clear);
  lcd_out(1,1, "Temp 2 limit:");
  while(!setup_key){
    lcd_out_short(2,1, temp2_alart);
    lcd_chr(2,4, (char)223);
    lcd_out(2,5, "C");

    if(up_key) temp2_alart++;
    if(temp2_alart > 100) temp2_alart = 0;
    if(down_key) temp2_alart--;
    
    delay_ms(300);
  }
  EEPROM_write(1, temp2_alart);
  delay_ms(500);
  
  lcd_cmd(_lcd_clear);
  lcd_out(1,1, "Humidity1 limit:");
  while(!setup_key){
    lcd_out_short(2,1, humidity1_alart);
    lcd_out(2,4, "%");

    if(up_key) humidity1_alart++;
    if(humidity1_alart > 100) humidity1_alart = 0;
    if(down_key) humidity1_alart--;
    
    delay_ms(300);
  }
  EEPROM_write(2, humidity1_alart);
  delay_ms(500);
  
  lcd_cmd(_lcd_clear);
  lcd_out(1,1, "Humidity2 limit:");
  while(!setup_key){
    lcd_out_short(2,1, humidity2_alart);
    lcd_out(2,4, "%");

    if(up_key) humidity2_alart++;
    if(humidity2 > 100) humidity2_alart = 0;
    if(down_key) humidity2_alart--;
    
    delay_ms(300);
  }
  EEPROM_write(3, humidity2_alart);
  lcd_cmd(_lcd_clear);
  delay_ms(1000);
}

void alarm(){
  buzzer = 1;
  delay_ms(200);
  buzzer = 0;
  delay_ms(100);
}

void main() {
  ADCON1 = 0x04;
  TRISB0_bit = 1;
  TRISB1_bit = 1;
  TRISC = 0x80;
  PORTC = 0x00;
  tmr_rly1 = 1;
  tmr_rly2 = 0;
  InitTimer0();
  lcd_init();
  lcd_cmd(_lcd_clear);
  lcd_cmd(_lcd_cursor_off);
  
  temp1_alart = EEPROM_read(0);
  temp2_alart = EEPROM_read(1);
  humidity1_alart = EEPROM_read(2);
  humidity2_alart = EEPROM_read(3);
  mm_H = EEPROM_read(4);
  mm_L = EEPROM_read(5);
  mm = (mm_H << 8) + mm_L;
  ss = EEPROM_read(6);
  t_flag = EEPROM_read(7);
  
  while(1){
    dht11_sense = DHT11_read0();
    humidity1 = dht11_sense >> 8;
    read_temp1();
    delay_ms(50);
    
    dht11_sense = DHT11_read1();
    humidity2 = dht11_sense >> 8;
    read_temp2();
    delay_ms(50);
    
    lcd_out_short(1,1,humidity1);
    lcd_out_short(2,1,humidity2);
    lcd_out(1,4, "%");
    lcd_out(2,4, "%");
    lcd_out_short(1,6,temp1);
    lcd_out_short(1,12,temp2);
    lcd_chr(1,9, (char)223);
    lcd_chr(1,15, (char)223);
    lcd_out(1,10, "C");
    lcd_out(1,16, "C");

    lcd_out_int(2, 11, mm);
    lcd_out(2,14, ":");
    lcd_out_2digit(2, 15, ss);
    
    if(t_flag && sec_flag){
      ss--;
      if(ss < 0) {ss = 59; mm--;}
      if(mm == 0 && ss == 0) {
        mm_H = EEPROM_read(4);
        mm_L = EEPROM_read(5);
        ss = EEPROM_read(6);
        mm = (mm_H << 8) + mm_L;
        tmr_rly1 = ~tmr_rly1;
        tmr_rly2 = ~tmr_rly2;
      }
      sec_flag = 0;
    }
    
    if(setup_key) setup();
    
    if(temp1 != temp1_alart) {tmp1_rly = 1; alarm();}
    else tmp1_rly = 0;
    if(temp2 != temp2_alart) {tmp2_rly = 1; alarm();}
    else tmp2_rly = 0;
    if(humidity1 != humidity1_alart) {hum1_rly = 1; alarm();}
    else hum1_rly = 0;
    if(humidity2 != humidity2_alart) {hum2_rly = 1; alarm();}
    else hum2_rly = 0;
  }
}