#line 1 "C:/Users/antor/Google Drive/Embedded Projects/STechBD/Projects/Loop counter/V2/Firmware/Loop counter.c"
#line 1 "c:/users/antor/google drive/embedded projects/stechbd/projects/loop counter/v2/firmware/keypad4x3.h"
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
#line 8 "C:/Users/antor/Google Drive/Embedded Projects/STechBD/Projects/Loop counter/V2/Firmware/Loop counter.c"
union uint16{
 unsigned int full;
 unsigned short lsb, msb;
};

union uint16 counter, countup;
unsigned short digit[5];
bit IRF, relay_f;
char key;

char anode[] = {192, 249, 164, 176, 153, 146, 130, 248, 128, 144};

void interrupt(){
 if(INTF_bit){
 INTF_bit = 0;
 IRF = 1;
 }
}

void clear_digit(){
  RA0_bit  = 0;  RA1_bit  = 0;
  RA2_bit  = 0;  RA3_bit  = 0;
}

void masking(unsigned short temp){
 temp = anode[temp];
 PORTB = temp << 1;
}

void segment_int(unsigned int count){
 digit[0] = count / 1000;
 digit[1] = (count % 1000) / 100;
 digit[2] = (count % 100) / 10;
 digit[3] = count % 10;

 masking(digit[0]);
  RA0_bit  = 1; delay_ms(1); clear_digit();
 masking(digit[1]);
  RA1_bit  = 1; delay_ms(1); clear_digit();
 masking(digit[2]);
  RA2_bit  = 1; delay_ms(1); clear_digit();
 masking(digit[3]);
  RA3_bit  = 1; delay_ms(1); clear_digit();
}

void blink(short seg){
 if(seg == 0){
 masking(digit[0]);
  RA0_bit  = 1; delay_ms(1); clear_digit();
 }
 else if(seg == 1){
 masking(digit[1]);
  RA1_bit  = 1; delay_ms(1); clear_digit();
 }
 else if(seg == 2){
 masking(digit[2]);
  RA2_bit  = 1; delay_ms(1); clear_digit();
 }
 else if(seg == 3){
 masking(digit[3]);
  RA3_bit  = 1; delay_ms(1); clear_digit();
 }
}

void setup(){
 int de, x = 0;
 counter.full = 0;
 delay_1sec();

 while(1){
 key = kp_scan();
 if(key >= '0' && key <= '9') digit[x] = key - 48;
 if(key == '*') {
 delay_ms(300);
 x++;
 if(x > 3) x = 0;
 }
 if(key == '#') break;

 for(de = 0; de < 100; de++){
 masking(digit[0]);
  RA0_bit  = 1; delay_ms(1); clear_digit();
 masking(digit[1]);
  RA1_bit  = 1; delay_ms(1); clear_digit();
 masking(digit[2]);
  RA2_bit  = 1; delay_ms(1); clear_digit();
 masking(digit[3]);
  RA3_bit  = 1; delay_ms(1); clear_digit();
 }
 for(de = 0; de < 300; de++) blink(x);
 }
 for(x = 0; x < 4; x++) digit[x] = digit[x] + 48;
 digit[4] = 0;
 countup.full = atoi(digit);
 EEPROM_write(2, countup.lsb);
 EEPROM_write(3, countup.msb);
}

void main() {
 kp_init();
 ADCON1 = 7;
 TRISA = 0x00;
 PORTA = 0x00;
 TRISB = 0x01;
 PORTB = 0x00;
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
 key = kp_scan();
 if(key == '*') setup();
 if(key == '#'){
 relay_f = ~relay_f;
 delay_ms(300);
 }

 segment_int(counter.full);

 if(IRF && counter.full < countup.full) {
 if(relay_f)  RA5_bit  = 1;
 if(key == '5') counter.full--;
 else counter.full++;
 EEPROM_write(0, counter.lsb);
 EEPROM_write(1, counter.msb);
 IRF = 0;
 }
 else  RA5_bit  = 0;
 if(relay_f && counter.full < countup.full)  RA5_bit  = 1;
 }
}
