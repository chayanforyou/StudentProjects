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

unsigned short buffer[16], msg[80];
unsigned short index, cnt, scroll, times;


void main() {
  lcd_init();
  uart1_init(9600);
  lcd_cmd(_lcd_cursor_off);
  lcd_cmd(_lcd_clear);
  lcd_out(1,1," -BT Voice MSG- ");
  lcd_out(2,1,"waiting for msg.");
  
  while(1){
    lcd_out(2,1,"waiting for msg.");
    for(cnt = 0; cnt < 16; cnt++) buffer[cnt] = 0;
    while(!uart1_data_ready());
    uart1_read_text(msg, "#", 255);

    index = strlen(msg);
    if(index - 1 > 16){
    for(times = 0; times < 3; times++){
      for(scroll = 0; scroll < index; scroll++){
         for(cnt = 0; cnt < 16; cnt++) {
            buffer[cnt] = msg[scroll + cnt];
            if(scroll + cnt >= index) buffer[cnt] = ' ';
         }
         for(cnt = 1; cnt <= 16; cnt++){
           lcd_chr(2, cnt, buffer[cnt]);
         }
         delay_ms(500);
      }
    }
    }
    else{
       for(cnt = 1; cnt < 17; cnt++){
         buffer[cnt - 1] = msg[cnt];
         if(cnt >= index) buffer[cnt - 1] = ' ';
         lcd_chr(2,cnt, buffer[cnt - 1]);
       }
       delay_ms(5000);
    }
  }
}