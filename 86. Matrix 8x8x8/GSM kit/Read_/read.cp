#line 1 "C:/Users/antor/Google Drive/Embedded Projects/Aminul Sir/7. Matrix 8x8x8/GSM kit/Read_/read.c"
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

char text[80];

char read_EEPROM(char adres){
 char dta;
 I2C1_Start();
 I2C1_Wr(0xA0);
 I2C1_Wr(adres);
 I2C1_Repeated_Start();
 I2C1_Wr(0xA1);
 dta = I2C1_Rd(0u);
 I2C1_Stop();
 return dta;
}

void main() {
 char x;
 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 I2C1_Init(100000);
 Delay_ms(1000);

 while(1){
 for(x = 0; x < 80; x++) text[x] = 0;
 for(x = 0; x < 32; x++){
 char y = read_EEPROM(x);
 if(y == '#') break;
 text[x] = y;
 }
 lcd_out(1,1, text);
 delay_ms(3000);
 Lcd_Cmd(_LCD_CLEAR);
 }
}
