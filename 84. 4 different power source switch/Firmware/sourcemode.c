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

#define AC_1 RC0_bit
#define AC_2 RC3_bit
#define AC_3 RC4_bit
#define AC_4 RC7_bit
#define Relay_1 RC1_bit
#define Relay_2 RC2_bit
#define Relay_3 RC5_bit
#define Relay_4 RC6_bit

char txt1[] = "AC_1:";
char txt2[] = "AC_2:";
char txt3[] = "AC_3:";
char txt4[] = "AC_4:";
char zero[] = "0";
char one[] = "1";

void default_lcd();

void main() {
  ADCON1 = 7;
  TrisC = 0b10011001;
  portA = 0; portC = 0;
  LCD_init();
  LCD_cmd(_lcd_cursor_off);
  LCD_cmd(_lcd_clear);
  
  while(1){
    Relay_1 = 0; Relay_2 = 0;
    Relay_3 = 0; Relay_4 = 0;
    lcd_out(1,1,"--NO AC Source--");
    lcd_out(2,1,"--- NO OUTPUT --");
    delay_ms(10);
    if(AC_1 || AC_2 || AC_3 || AC_4)lcd_cmd(_lcd_clear);
    
    while(AC_1 == 1){Relay_1 = 1; default_lcd();}
    Relay_1 = 0; Relay_2 = 0;
    Relay_3 = 0; Relay_4 = 0;
    while(AC_2 == 1){Relay_2 = 1; default_lcd();}
    Relay_1 = 0; Relay_2 = 0;
    Relay_3 = 0; Relay_4 = 0;
    while(AC_3 == 1){Relay_3 = 1; default_lcd();}
    Relay_1 = 0; Relay_2 = 0;
    Relay_3 = 0; Relay_4 = 0;
    while(AC_4 == 1){Relay_4 = 1; default_lcd();}
  }
}

void default_lcd(){
  lcd_out(1,1,txt1);
  lcd_out(1,10,txt2);
  lcd_out(2,1,txt3);
  lcd_out(2,10,txt4);
  if(AC_1){lcd_out(1,7, one);}
    else{lcd_out(1,7, zero);}
  if(AC_2){lcd_out(1,16, one);}
    else{lcd_out(1,16, zero);}
  if(AC_3){lcd_out(2,7, one);}
    else{lcd_out(2,7, zero);}
  if(AC_4){lcd_out(2,16, one);}
    else{lcd_out(2,16,zero);}
}