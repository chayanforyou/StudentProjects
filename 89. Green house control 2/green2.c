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

//DHT11 DEFINITONS
sbit DHT11_Pin at PORTC.B0;
sbit DHT11_DIR at TRISC.B0;
extern unsigned int DHT11_TMP;
extern unsigned int DHT11_HUM;
extern char DHT11_CHKSM;
//END OF DHT11 DEFINITONS

#define fan_rly RC1_bit
#define light_rly RC3_bit
#define motor_rly RC2_bit

char hum, temp, soil;

short humidity(){
  Dht11_Start();
  DHT11_Read();

   if(DHT11_CHKSM==((DHT11_TMP>>8)+(DHT11_HUM>>8)+(DHT11_TMP&0xff)+(DHT11_HUM&0xff))){
    return DHT11_HUM >> 8;
   }
}

void char2lcd(char x, char y, char dta){
  char digit[4];
  digit[0] = dta / 100 + 48;
  digit[1] = (dta % 100) / 10 + 48;
  digit[2] = dta % 10 + 48;
  digit[3] = 0;
  lcd_out(x, y, digit);
}

void main() {
  TRISC = 0;
  PORTC = 0;
  lcd_init();
  lcd_cmd(_lcd_cursor_off);
  lcd_cmd(_lcd_clear);
  delay_ms(1000);
  lcd_out(1,1,"Soil:    %     C");
  lcd_chr(1,15, 223);
  lcd_out(2,1,"Humidity:    %");
  
  while(1){
    soil = adc_read(2);
    temp = adc_read(0);
    hum = humidity();

    soil = (255 - soil) / 2.55;
    temp = temp * 1.96;

    char2lcd(1,7, soil);
    char2lcd(1,12, temp);
    char2lcd(2,11, hum);
    
    if(temp > 26) light_rly = 0;
    if(temp < 23) light_rly = 1;
    
    if(hum > 55) fan_rly = 0;
    if(hum < 55) fan_rly = 1;

    if(soil > 70) motor_rly = 0;
    if(soil < 30) motor_rly = 1;
  }
}