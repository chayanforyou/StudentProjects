// LCD module connections
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
// End LCD module connections

char i;
unsigned char rxarray[20];

char genimg(){
 do{
   uart1_write(0xef);
   uart1_write(0x01);  //header
   uart1_write(0xff);
   uart1_write(0xff);
   uart1_write(0xff);
   uart1_write(0xff); //adres
   uart1_write(0x01); //write code
   uart1_write(0x00);
   uart1_write(0x03);
   uart1_write(0x01);
   uart1_write(0x00);
   uart1_write(0x05);
   for(i=0;i<12;i++){
     rxarray[i] = Uart1_Read();
   }
 }while(rxarray[9] != 0x00);
}

void enroll(){
  genimg();
  
}

void main(){
  uart1_init(57600);
  lcd_init();
  lcd_cmd(_lcd_clear);
  lcd_cmd(_lcd_cursor_off);
  delay_ms(5000);
  
  enroll();
}