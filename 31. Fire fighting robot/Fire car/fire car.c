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
sbit MANRXPIN at RB0_bit;
sbit MANRXPIN_Direction at TRISB0_bit;

char rf_rx, err;

void main() {
  Lcd_Init();
  Lcd_Cmd(_LCD_CLEAR);
  lcd_cmd(_lcd_cursor_off);
  Man_Receive_Init();
  
  while(1){
    lcd_out(1,1,"RF signal: ");
    rf_rx = Man_Receive(&err);
    if(err);
    else{
      if(rf_rx >= 0 && rf_rx < 10) lcd_chr(2,rf_rx, rf_rx + 48);
    }
  }
}