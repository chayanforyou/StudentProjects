#include "define.h"

void main() {
  lcd_init();
  lcd_cmd(_lcd_clear);
  lcd_cmd(_lcd_cursor_off);
  TRISC = 0x00;
  TRISC4_bit = 1;
  PORTC = 0xFF;
  INTCON = 0xC0;
  PIE1.RCIE = 1;
  uart1_init(9600);
  
  lcd_chr(1,4,(char)223);
  lcd_out(1,5,"C Smoke: ");
  
  while(1){
    tmp = adc_read(0);
    smoke = adc_read(1);
    print_dec(1,1, temp);
    print_dec(1,14, smoke);
    if(sound){
      lcd_out(2,2,"    -NONE-    ");
      uart1_write('0');
      newline();
      delay_ms(200);
    }
    else{
      lcd_out(2,2,"-NOISE DETECT-");
      uart1_write('1');
      newline();
      delay_ms(200);
    }
  }
}