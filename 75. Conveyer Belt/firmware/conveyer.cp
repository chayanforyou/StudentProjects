#line 1 "C:/Users/antor/Google Drive/Embedded Projects/Tanvir Bhai/Projects/75. Conveyer Belt/firmware/conveyer.c"
sbit LCD_RS at RB3_bit;
sbit LCD_EN at RB2_bit;
sbit LCD_D4 at RB4_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D7 at RB7_bit;

sbit LCD_RS_Direction at TRISB3_bit;
sbit LCD_EN_Direction at TRISB2_bit;
sbit LCD_D4_Direction at TRISB4_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D7_Direction at TRISB7_bit;
#line 27 "C:/Users/antor/Google Drive/Embedded Projects/Tanvir Bhai/Projects/75. Conveyer Belt/firmware/conveyer.c"
short checkpoint = 0;

const char txt1[] = "Welcome to PCIU";
const char txt2[] = "Smart Cafeteria";

const char txt3[] = "Order Accepted";
const char txt4[] = "Wait for order";

const char txt5[] = "For return waste";
const char txt6[] = "press the button";

const char txt7[] = "For wait for";
const char txt8[] = "next order";
char txt[17];


void select_lcd(short n){
 if(n == 1){
 TRISB0_bit = 1;
 TRISB1_bit = 0;
 delay_ms(1);
 lcd_init();
 Lcd_Cmd(_LCD_CURSOR_OFF);
 }
 else{
 TRISB0_bit = 0;
 TRISB1_bit = 1;
 delay_ms(1);
 lcd_init();
 Lcd_Cmd(_LCD_CURSOR_OFF);
 }
}

void servoRotate0(){
 unsigned int i;
 for(i=0;i<50;i++){
  RE0_bit  = 1;
 Delay_us(800);
  RE0_bit  = 0;
 Delay_us(19200);
 }
}

void servoRotate90() {
 unsigned int i;
 for(i=0;i<50;i++){
  RE0_bit  = 1;
 Delay_us(1500);
  RE0_bit  = 0;
 Delay_us(18500);
 }
}

void motorOff(){
  RE1_bit  = 0;
  RE2_bit  = 0;
}

void motorClock(){
  RE1_bit  = 1;
  RE2_bit  = 0;
}

void motorAntiClock(){
  RE1_bit  = 0;
  RE2_bit  = 1;
}

void strConstCopy(char *dest, const char *source) {
 while(*source)
 *dest++ = *source++;
 *dest = 0;
}

void defaultLcd(){
 select_lcd(1);
 strConstCopy(txt, txt1);
 lcd_out(1,1, txt);
 strConstCopy(txt, txt2);
 lcd_out(2,1, txt);

 select_lcd(2);
 strConstCopy(txt, txt1);
 lcd_out(1,1, txt);
 strConstCopy(txt, txt2);
 lcd_out(2,1, txt);
}

void main() {
 ADCON1 = 7;
 CMCON = 7;
 TRISD = 0xff;
 TRISE = 0x00;

 motorOff();
 servoRotate0();
 defaultLcd();
 delay_ms(1000);

 while(1){
 if( RD4_bit  == 0){
 servoRotate90();
 delay_ms(5000);
 servoRotate0();
 }

 if( RD0_bit  == 1 && checkpoint == 0){
 checkpoint = 1;
 motorClock();

 select_lcd(1);
 Lcd_Cmd(_LCD_CLEAR);
 strConstCopy(txt, txt3);
 lcd_out(2,1, txt);

 select_lcd(2);
 Lcd_Cmd(_LCD_CLEAR);
 strConstCopy(txt, txt4);
 lcd_out(2,1, txt);
 delay_ms(300);
 }

 if( RD5_bit  == 0 && checkpoint == 1){
 checkpoint = 2;
 motorOff();

 select_lcd(1);
 Lcd_Cmd(_LCD_CLEAR);
 strConstCopy(txt, txt5);
 lcd_out(1,1, txt);
 strConstCopy(txt, txt6);
 lcd_out(2,1, txt);
 delay_ms(300);
 }

 if( RD1_bit  == 1 && checkpoint == 2){
 checkpoint = 3;
 motorAntiClock();
 delay_ms(300);
 }

 if( RD6_bit  == 0 && checkpoint == 3){
 checkpoint = 4;
 motorOff();
 delay_ms(300);
 }

 if( RD2_bit  == 1 && checkpoint == 4){
 checkpoint = 5;
 motorClock();

 select_lcd(2);
 Lcd_Cmd(_LCD_CLEAR);
 strConstCopy(txt, txt3);
 lcd_out(2,1, txt);

 select_lcd(1);
 Lcd_Cmd(_LCD_CLEAR);
 strConstCopy(txt, txt4);
 lcd_out(2,1, txt);
 delay_ms(300);
 }

 if( RD7_bit  == 0 && checkpoint == 5){
 checkpoint = 6;
 motorOff();
 delay_ms(300);
 }

 if( RD3_bit  == 1 && checkpoint == 6){
 checkpoint = 7;
 select_lcd(1);
 Lcd_Cmd(_LCD_CLEAR);
 strConstCopy(txt, txt7);
 lcd_out(1,1, txt);
 strConstCopy(txt, txt8);
 lcd_out(2,1, txt);

 select_lcd(2);
 Lcd_Cmd(_LCD_CLEAR);
 strConstCopy(txt, txt7);
 lcd_out(1,1, txt);
 strConstCopy(txt, txt8);
 lcd_out(2,1, txt);
 delay_ms(300);
 }

 if( RD6_bit  == 0 && checkpoint == 7){
 checkpoint = 8;
 motorAntiClock();
 defaultLcd();
 delay_ms(300);
 }

 if( RD6_bit  == 1 && checkpoint == 8){
 checkpoint = 0;
 motorOff();
 }
 }
}
