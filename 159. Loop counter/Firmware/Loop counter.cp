#line 1 "C:/Users/antor/Google Drive/Embedded Projects/STechBD/Projects/Loop counter/Firmware/Loop counter.c"
#line 1 "c:/users/antor/google drive/embedded projects/stechbd/projects/loop counter/firmware/keypad4x3.h"
sbit kp_row1 at RC6_bit;
sbit kp_row2 at RC5_bit;
sbit kp_row3 at RC4_bit;
sbit kp_row4 at RC3_bit;
sbit kp_col1 at RC2_bit;
sbit kp_col2 at RC1_bit;
sbit kp_col3 at RC0_bit;
sbit kp_row1_dir at TRISC6_bit;
sbit kp_row2_dir at TRISC5_bit;
sbit kp_row3_dir at TRISC4_bit;
sbit kp_row4_dir at TRISC3_bit;
sbit kp_col1_dir at TRISC2_bit;
sbit kp_col2_dir at TRISC1_bit;
sbit kp_col3_dir at TRISC0_bit;

void kp_init(){
 kp_row1_dir = 0;
 kp_row2_dir = 0;
 kp_row3_dir = 0;
 kp_row4_dir = 0;
 kp_col1_dir = 1;
 kp_col2_dir = 1;
 kp_col3_dir = 1;
 kp_row1 = 0;
 kp_row2 = 0;
 kp_row3 = 0;
 kp_row4 = 0;
}

char kp_scan(){
 char key = 0;
 kp_row1 = 1; kp_row2 = 0; kp_row3 = 0; kp_row4 = 0;
 delay_1ms();
 if(kp_col1 == 1) key = '1';
 else if(kp_col2 == 1) key = '2';
 else if(kp_col3 == 1) key = '3';
 kp_row1 = 0; kp_row2 = 1; kp_row3 = 0; kp_row4 = 0;
 delay_1ms();
 if(kp_col1 == 1) key = '4';
 else if(kp_col2 == 1) key = '5';
 else if(kp_col3 == 1) key = '6';
 kp_row1 = 0; kp_row2 = 0; kp_row3 = 1; kp_row4 = 0;
 delay_1ms();
 if(kp_col1 == 1) key = '7';
 else if(kp_col2 == 1) key = '8';
 else if(kp_col3 == 1) key = '9';
 kp_row1 = 0; kp_row2 = 0; kp_row3 = 0; kp_row4 = 1;
 delay_1ms();
 if(kp_col1 == 1) key = '*';
 else if(kp_col2 == 1) key = '0';
 else if(kp_col3 == 1) key = '#';
 return key;
}

char kp_get_key(){
 char key = 0;
 while(!key){
 key = kp_scan();
 }
 return key;
}
#line 2 "C:/Users/antor/Google Drive/Embedded Projects/STechBD/Projects/Loop counter/Firmware/Loop counter.c"
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

sbit relay at RA0_bit;
sbit relay_dir at TRISA0_bit;

union uint16{
 unsigned int full;
 unsigned short lsb, msb;
};

union uint16 counter, countup;
char txt[7];
bit IRF, relay_f;
char key;

void interrupt(){
 if(INTF_bit){
 INTF_bit = 0;
 IRF = 1;
 }
}

void setup(){
 char dta[7], x = 0;
 lcd_cmd(_LCD_UNDERLINE_ON);
 lcd_cmd(_lcd_clear);
 lcd_out(1,1, "Countup to:");
 lcd_cmd(_LCD_SECOND_ROW);
 delay_1sec();
 while(1){
 key = kp_get_key();
 if(key == '#') break;
 if(key != '*'){
 dta[x] = key;
 lcd_chr_cp(key);
 delay_ms(300);
 x++;
 }
 if(key == '*'){
 lcd_cmd(_lcd_move_cursor_left);
 --x;
 delay_ms(300);
 }
 }
 dta[x] = 0;
 countup.full = atoi(dta);
 EEPROM_write(2, countup.lsb);
 EEPROM_write(3, countup.msb);
 lcd_cmd(_lcd_clear);
 lcd_cmd(_lcd_cursor_off);
 counter.full = 0;
 delay_1sec();
}

void decrease_counter(){
 char dta[7], x = 0, y;
 lcd_cmd(_lcd_clear);
 lcd_cmd(_LCD_UNDERLINE_ON);
 lcd_out(1,1, "Minus Counter:");
 lcd_cmd(_LCD_SECOND_ROW);
 delay_1sec();
 while(1){
 key = kp_get_key();
 if(key == '#') break;
 if(key != '*'){
 dta[x] = key;
 lcd_chr_cp(key);
 delay_ms(300);
 x++;
 }
 if(key == '*'){
 lcd_cmd(_lcd_move_cursor_left);
 --x;
 delay_ms(300);
 }
 }
 dta[x] = 0;
 y = atoi(dta);
 counter.full -= y;
 EEPROM_write(0, counter.lsb);
 EEPROM_write(1, counter.msb);
 lcd_cmd(_lcd_clear);
 lcd_cmd(_lcd_cursor_off);
 delay_1sec();
}

void main() {
 lcd_init();
 lcd_cmd(_lcd_cursor_off);
 lcd_cmd(_lcd_clear);
 kp_init();
 ADCON1 = 7;
 relay_dir = 0;
 INTE_bit = 1;
 INTF_bit = 0;
 INTEDG_bit = 0;
 GIE_bit = 1;
 IRF = 0;
 counter.lsb = EEPROM_read(0);
 counter.msb = EEPROM_read(1);
 countup.lsb = EEPROM_read(2);
 countup.msb = EEPROM_read(3);

 while(1){
 lcd_out(1,1, "WireLoop Counter");
 key = kp_scan();
 if(key == '*') setup();
 if(key == '0') decrease_counter();
 if(key == '#') {
 relay_f = ~relay_f;
 if(relay_f) lcd_out(2,11, "RlyON ");
 else lcd_out(2,11, "RlyOFF");
 delay_ms(300);
 }
 if(IRF && counter.full < countup.full){
 if(key == '5') counter.full--;
 else counter.full++;
 EEPROM_write(0, counter.lsb);
 EEPROM_write(1, counter.msb);
 IRF = 0;
 }
 else relay = 0;
 if(relay_f && counter.full < countup.full) relay = 1;
 IntToStrWithZeros(counter.full, txt);
 lcd_out(2,1, txt);
 }
}
