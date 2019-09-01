#line 1 "C:/Users/antor/Google Drive/Embedded Projects/Rifat Bhai/DHT11 Humidity/LCD/DHT11.c"
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
#line 1 "c:/users/antor/google drive/embedded projects/rifat bhai/dht11 humidity/lcd/dht11.h"

char _Check = 0;

void StartSignal(){
 DHT11_dir = 0;
 DHT11 = 0;
 delay_ms(18);
 DHT11 = 1;
 delay_us(30);
 DHT11_dir = 1;
}

void CheckResponse(){
 _Check = 0;
 delay_us(40);
 if(DHT11 == 0){
 delay_us(80);
 if(DHT11 == 1) _Check = 1;
 delay_us(40);
 }
}

char ReadData(){
 char i, j;
 for(j = 0; j < 8; j++){
 while(!DHT11);
 delay_us(30);
 if(DHT11 == 0)
 i&= ~(1 << (7 - j));
 else {
 i|= (1 << (7 - j));
 while(DHT11);
 }
 }
 return i;
}

int DHT11_read(){
 char Temp, RH, Sum;
 StartSignal();
 CheckResponse();
 if(_Check == 1){
 RH = ReadData();
 ReadData();
 Temp = ReadData();
 ReadData();
 Sum = ReadData();
 if(Sum == (RH + Temp)){
 return (RH << 8) + Temp;
 }
 }
}
#line 18 "C:/Users/antor/Google Drive/Embedded Projects/Rifat Bhai/DHT11 Humidity/LCD/DHT11.c"
unsigned sensor;
char hum, temp;

void lcd_out_byte(char x, char y, char byte){
 char digit[4];
 digit[0] = byte / 100 + 48;
 digit[1] = (byte % 100) / 10 + 48;
 digit[2] = byte % 10 + 48;
 digit[3] = 0;
 lcd_out(x,y,digit);
}

void main() {
 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 lcd_out(1,1,"Humidity:    %");
 lcd_out(2,1,"Temp:     C");
 lcd_chr(2,10, 223);

 while (1){
 sensor = DHT11_read();
 hum = sensor >> 8;
 temp = sensor;
 lcd_out_byte(1,11,hum);
 lcd_out_byte(2,7,temp);
 }
}