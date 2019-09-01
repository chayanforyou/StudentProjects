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

#define ironled porta.f3
#define idle porta.f1
#define iron porta.f2

char  keypadPort at PORTC;
unsigned short kp;

void device_init(){
  ADCON1 = 0x0E;
  trisa = 0x01;
  porta = 0x00;
  lcd_init();
  lcd_cmd(_lcd_clear);
  lcd_cmd(_lcd_cursor_off);
}

unsigned short convert(){
  switch (kp){
      case  1: kp = 49; break; // 1
      case  2: kp = 50; break; // 2
      case  3: kp = 51; break; // 3
      case  4: kp = 65; break; // A
      case  5: kp = 52; break; // 4
      case  6: kp = 53; break; // 5
      case  7: kp = 54; break; // 6
      case  8: kp = 66; break; // B
      case  9: kp = 55; break; // 7
      case 10: kp = 56; break; // 8
      case 11: kp = 57; break; // 9
      case 12: kp = 67; break; // C
      case 13: kp = 42; break; // *
      case 14: kp = 48; break; // 0
      case 15: kp = 35; break; // #
      case 16: kp = 68; break; // D
    }
  return kp;
}

unsigned short get_key_click(){
  kp = 0;
  do{
      kp = Keypad_Key_click();
  }while(!kp);
  convert();
}

unsigned short get_key_press(){
  kp = 0;
  kp = Keypad_Key_press();
  convert();
}

int get_adc(){
   int adc = adc_read(0);
   delay_ms(500);
   return adc;
}

void adc_show(short x, short y){
  char temp[5];
  int adc = get_adc();
   temp[0] = adc/1000 + 48;
   temp[1] = (adc/100)%10 + 48;
   temp[2] = (adc/10)%10 + 48;
   temp[3] = adc%10 + 48;
   lcd_out(x,y, temp);
}