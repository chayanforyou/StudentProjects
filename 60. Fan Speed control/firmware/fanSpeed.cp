#line 1 "C:/Users/antor/Desktop/firmware/fanSpeed.c"
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
#line 1 "c:/users/antor/desktop/firmware/keypad4x3.h"
sbit kp_row1 at RC7_bit;
sbit kp_row2 at RC6_bit;
sbit kp_row3 at RC5_bit;
sbit kp_row4 at RC4_bit;
sbit kp_col1 at RC3_bit;
sbit kp_col2 at RC2_bit;
sbit kp_col3 at RC1_bit;
sbit kp_row1_dir at TRISC7_bit;
sbit kp_row2_dir at TRISC6_bit;
sbit kp_row3_dir at TRISC5_bit;
sbit kp_row4_dir at TRISC4_bit;
sbit kp_col1_dir at TRISC3_bit;
sbit kp_col2_dir at TRISC2_bit;
sbit kp_col3_dir at TRISC1_bit;

void kp_init(){
 kp_row1_dir = 1;
 kp_row2_dir = 1;
 kp_row3_dir = 1;
 kp_row4_dir = 1;
 kp_col1_dir = 0;
 kp_col2_dir = 0;
 kp_col3_dir = 0;
 kp_col1 = 0;
 kp_col2 = 0;
 kp_col3 = 0;
}

char kp_scan(){
 char key = 0;
 kp_col1 = 1; kp_col2 = 0; kp_col3 = 0;
 delay_1ms();
 if(kp_row1 == 1) key = '1';
 else if(kp_row2 == 1) key = '4';
 else if(kp_row3 == 1) key = '7';
 else if(kp_row4 == 1) key = '*';
 delay_1ms();
 kp_col1 = 0; kp_col2 = 1; kp_col3 = 0;
 delay_1ms();
 if(kp_row1 == 1) key = '2';
 else if(kp_row2 == 1) key = '5';
 else if(kp_row3 == 1) key = '8';
 else if(kp_row4 == 1) key = '0';
 kp_col1 = 0; kp_col2 = 0; kp_col3 = 1;
 delay_1ms();
 if(kp_row1 == 1) key = '3';
 else if(kp_row2 == 1) key = '6';
 else if(kp_row3 == 1) key = '9';
 else if(kp_row4 == 1) key = '#';
 return key;
}


char kp_get_key(){
 char key = 0;
 while(!key){
 key = kp_scan();
 }
 return key;
}
#line 17 "C:/Users/antor/Desktop/firmware/fanSpeed.c"
unsigned char FlagReg;
sbit ZC at FlagReg.B0;
int rpm = 0, timer = 0;

void vdelay_us(unsigned time_us){
 int i;
 for(i = 0; i < time_us; i++) delay_us(1);
}

void interrupt(){
 if (INTCON.INTF){
 rpm++;
 INTCON.INTF = 0;
 }
}

void fanSpeed(short speed){
 int x = speed * 50;
  RB1_bit  = 1;
 vdelay_us(x);
  RB1_bit  = 0;
 vdelay_us(5000 - x);
}

char key, txt[7], hz = 50, speed = 100;

void lcd_out_byte(short x, short y, char val){
 lcd_chr(x, y, val / 100 + 48);
 lcd_chr(x, y + 1, (val % 100) / 10 + 48);
 lcd_chr(x, y + 2, val % 10 + 48);
}

void home(){
 lcd_cmd(_lcd_cursor_off);
 lcd_cmd(_lcd_clear);
 lcd_chr(1, 4, '%');
 lcd_out(2,1, "*: SPEED");
 lcd_out(2,15, "Hz");
}

void setSpeed(){
 char x = 0, tmp[3];
 lcd_cmd(_LCD_BLINK_CURSOR_ON);
 lcd_cmd(_lcd_clear);
 lcd_out(1,1, "Set Speed[0-100]");
 delay_ms(300);

 speed = 0;
 while(1){
 key = kp_get_key();
 if(key == '*') {
 x++;
 tmp[x] = 0;
 lcd_chr(2, x+1, '0');
 delay_ms(300);
 }
 else if(key == '#') break;
 else {
 tmp[x] = key - 48;
 lcd_chr(2, x+1, key);
 delay_ms(300);
 }
 }
 speed = tmp[0] * 100 + tmp[1] * 10 + tmp[2];
 hz = speed * 0.5;
 delay_ms(100);
 home();
}

void main() {
 PORTB = 0;
 TRISB = 0x01;
 OPTION_REG.INTEDG = 1;
 INTCON.INTF = 0;
 INTCON.INTE = 1;
 INTCON.GIE = 1;
 kp_init();
 lcd_init();
 home();

 while (1){
 timer++;
 if(timer > 100) {
 inttostrwithzeros(rpm, txt);
 lcd_out(1, 11, txt);
 rpm = 0; timer = 0;
 }
 lcd_out_byte(1, 1, speed);
 lcd_out_byte(2, 12, hz);

 fanSpeed(speed);
 key = kp_scan();
 if(key == '*') setSpeed();
 }
}
