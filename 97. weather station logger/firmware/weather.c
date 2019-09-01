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

sbit DHT11 at RC0_bit;
sbit DHT11_dir at TRISC0_bit;
#include "DHT11.h"

unsigned sensor;
char hum, temp, LDR;

void lcd_out_byte(char x, char y, char byte){
  char digit[4];
  digit[0] = byte / 100 + 48;
  digit[1] = (byte % 100) / 10 + 48;
  digit[2] = byte % 10 + 48;
  digit[3] = 0;
  lcd_out(x,y,digit);
}

void uart1_write_byte(char byte){
  char digit[4];
  digit[0] = byte / 100 + 48;
  digit[1] = (byte % 100) / 10 + 48;
  digit[2] = byte % 10 + 48;
  digit[3] = 0;
  uart1_write_text(digit);
}

void main() {
  lcd_init();
  lcd_cmd(_lcd_clear);
  lcd_cmd(_lcd_cursor_off);
  UART1_init(9600);
  
  lcd_out(1,1,"Humidity:    %");
  lcd_chr(2,4, 223);
  lcd_out(2,5,"C");
  lcd_out(2,9,"LDR:");
  lcd_out(2,16,"%");
  
  while(1){
    sensor = DHT11_read();
    hum = sensor >> 8;
    temp = sensor;
    LDR = adc_read(1);
    LDR = 255 - LDR;
    LDR = LDR / 2.55;
    delay_ms(500);

    lcd_out_byte(1,11,hum);
    lcd_out_byte(2,1,temp);
    lcd_out_byte(2,13,LDR);
    
    uart1_write_text("Humidity: ");
    uart1_write_byte(hum);
    uart1_write_text("%\tTemperature: ");
    uart1_write_byte(temp);
    uart1_write((char)176);
    uart1_write_text("C\tLight: ");
    uart1_write_byte(LDR);
    uart1_write_text("%\n");
  }
}