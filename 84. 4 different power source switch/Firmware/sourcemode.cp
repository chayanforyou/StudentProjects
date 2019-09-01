#line 1 "D:/1. Electronics/Antor's corner/Aminul Sir/5. 4 different power source switch/Firmware/sourcemode.c"
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
  RC1_bit  = 0;  RC2_bit  = 0;
  RC5_bit  = 0;  RC6_bit  = 0;
 lcd_out(1,1,"--NO AC Source--");
 lcd_out(2,1,"--- NO OUTPUT --");
 delay_ms(10);
 if( RC0_bit  ||  RC3_bit  ||  RC4_bit  ||  RC7_bit )lcd_cmd(_lcd_clear);

 while( RC0_bit  == 1){ RC1_bit  = 1; default_lcd();}
  RC1_bit  = 0;  RC2_bit  = 0;
  RC5_bit  = 0;  RC6_bit  = 0;
 while( RC3_bit  == 1){ RC2_bit  = 1; default_lcd();}
  RC1_bit  = 0;  RC2_bit  = 0;
  RC5_bit  = 0;  RC6_bit  = 0;
 while( RC4_bit  == 1){ RC5_bit  = 1; default_lcd();}
  RC1_bit  = 0;  RC2_bit  = 0;
  RC5_bit  = 0;  RC6_bit  = 0;
 while( RC7_bit  == 1){ RC6_bit  = 1; default_lcd();}
 }
}

void default_lcd(){
 lcd_out(1,1,txt1);
 lcd_out(1,10,txt2);
 lcd_out(2,1,txt3);
 lcd_out(2,10,txt4);
 if( RC0_bit ){lcd_out(1,7, one);}
 else{lcd_out(1,7, zero);}
 if( RC3_bit ){lcd_out(1,16, one);}
 else{lcd_out(1,16, zero);}
 if( RC4_bit ){lcd_out(2,7, one);}
 else{lcd_out(2,7, zero);}
 if( RC7_bit ){lcd_out(2,16, one);}
 else{lcd_out(2,16,zero);}
}
