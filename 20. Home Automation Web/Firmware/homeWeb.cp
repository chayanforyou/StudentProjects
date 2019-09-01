#line 1 "C:/Users/antor/Google Drive/Embedded Projects/Tanvir Bhai/Projects/20. Home Automation Web/Firmware/homeWeb.c"
#line 1 "c:/users/antor/google drive/embedded projects/tanvir bhai/projects/20. home automation web/firmware/define.h"
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







char smoke, tmp, rxd, x = 0;
char r_status[7];


void newline(){
 uart1_write(13);
 uart1_write(10);
}

void check_relay(){
 if(x == 5 && r_status[0] == 'R'){
 r_status[0] = 0;
 if(r_status[1] == '1')  RC0_bit  = 0;
 if(r_status[2] == '1')  RC1_bit  = 0;
 if(r_status[3] == '1')  RC2_bit  = 0;
 if(r_status[4] == '1')  RC3_bit  = 0;
 if(r_status[1] == '0')  RC0_bit  = 1;
 if(r_status[2] == '0')  RC1_bit  = 1;
 if(r_status[3] == '0')  RC2_bit  = 1;
 if(r_status[4] == '0')  RC3_bit  = 1;
 }
}

void interrupt (){
 if (PIR1.RCIF) {
 PIR1.RCIF = 0;
 rxd = 0;
 rxd = UART1_read();
 r_status[x] = rxd;
 x++;
 if(x == 7) x = 0;
 check_relay();
 }
}

void print_dec(char x, char y, char value){
 char digit[4];
 digit[0] = value / 100 + 48;
 digit[1] = (value % 100) / 10 + 48;
 digit[2] = value % 10 + 48;
 digit[3] = 0;
 lcd_out(x,y, digit);
 uart1_write(digit[0]);
 uart1_write(digit[1]);
 uart1_write(digit[2]);
 newline();
}
#line 3 "C:/Users/antor/Google Drive/Embedded Projects/Tanvir Bhai/Projects/20. Home Automation Web/Firmware/homeWeb.c"
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
 print_dec(1,1,  (tmp * 0.0196) * 100 );
 print_dec(1,14, smoke);
 if( RC4_bit ){
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
