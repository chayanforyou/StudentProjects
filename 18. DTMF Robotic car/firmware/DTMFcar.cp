#line 1 "C:/Users/antor/Google Drive/Embedded Projects/Tanvir Bhai/Projects/18. DTMF Robotic car/firmware/DTMFcar.c"
#line 1 "c:/users/antor/google drive/embedded projects/tanvir bhai/projects/18. dtmf robotic car/firmware/define.h"
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




sbit sound at RD4_bit;

sbit color_r at RD5_bit;
sbit color_g at RD6_bit;
sbit color_b at RD7_bit;

sbit dtmf_std at RA2_bit;
sbit dtmf_q1 at RA5_bit;
sbit dtmf_q2 at RE0_bit;
sbit dtmf_q3 at RE1_bit;
sbit dtmf_q4 at RE2_bit;

sbit motor1_a at RC3_bit;
sbit motor1_b at RC2_bit;
sbit motor2_a at RC4_bit;
sbit motor2_b at RC5_bit;
sbit motor3_a at RC1_bit;
sbit motor3_b at RC0_bit;
sbit motor4_a at RC6_bit;
sbit motor4_b at RC7_bit;

sbit servo_1 at RD0_bit;
sbit servo_2 at RD1_bit;

sbit buzzer at RD2_bit;


char DTMF_read(){
 char out = 0;
 if(dtmf_std){
 out.b0 = dtmf_q1;
 out.b1 = dtmf_q2;
 out.b2 = dtmf_q3;
 out.b3 = dtmf_q4;
 }
 return out;
}

void servo1_0d(){
 servo_1 = 1;
 delay_us(200);
 servo_1 = 0;
 delay_us(19800);
}

void servo1_180d(){
 servo_1 = 1;
 delay_us(2200);
 servo_1 = 0;
 delay_us(17800);
}

void servo2_0d(){
 servo_2 = 1;
 delay_us(400);
 servo_2 = 0;
 delay_us(19600);
}

void servo2_180d(){
 servo_2 = 1;
 delay_us(2200);
 servo_2 = 0;
 delay_us(17800);
}

void int2str(char x, char y, int temp){
 char digit[4];
 digit[0] = temp / 1000 + 48;
 digit[1] = (temp % 1000) / 100 + 48;
 digit[2] = (temp % 100) / 10 + 48;
 digit[3] = temp % 10 + 48;
 lcd_chr(x,y, digit[0]);
 lcd_chr(x,y+1, digit[1]);
 lcd_chr(x,y+2, digit[2]);
 lcd_chr(x,y+3, digit[3]);
}
#line 3 "C:/Users/antor/Google Drive/Embedded Projects/Tanvir Bhai/Projects/18. DTMF Robotic car/firmware/DTMFcar.c"
void noise_sense(){
 if(sound == 1) {
 lcd_out(1,1, "-Noise Detected-");
 buzzer = 1;
 delay_ms(1000);
 lcd_cmd(_lcd_clear);
 }
 else {
 lcd_out(1,1, "NO Noise");
 buzzer = 0;
 }
}

void gas_sense(){
 int gas = adc_read( 0 );
 lcd_out(2,1, "Smoke:");
 int2str(2,7,gas);
 if(gas > 500) {buzzer = 1; delay_ms(100);}
}

int get_color(){
 int color = adc_read( 1 );
 return color;
}

void color_sense(){
 char x;
 int red = 0, green = 0, blue = 0;
 color_r = 0; color_g = 1; color_b = 1;
 for(x = 0; x < 50; x++) red += get_color();
 red /= 50;
 color_r = 1; color_g = 0; color_b = 1;
 for(x = 0; x < 50; x++) green += get_color();
 green /= 50;
 color_r = 1; color_g = 1; color_b = 0;
 for(x = 0; x < 50; x++) blue += get_color();
 blue /= 50;

 if(red > green) {
 if(red > blue) lcd_out(1,12,"RED  ");
 else lcd_out(1,12,"BLUE ");
 }
 else{
 if(green > blue) lcd_out(1,12,"GREEN");
 else lcd_out(1,12,"BLUE ");
 }
}

void stop_car(){
 motor1_a = 0; motor1_b = 0;
 motor2_a = 0; motor2_b = 0;
 motor3_a = 0; motor3_b = 0;
 motor4_a = 0; motor4_b = 0;
}

void move_car(){
 char DTMF = DTMF_read();
 lcd_out(2,11, " CMD:");
 lcd_chr(2,16, DTMF + 48);
 switch(DTMF){
 case 2:
 motor1_a = 1; motor1_b = 0;
 motor2_a = 1; motor2_b = 0;
 motor3_a = 1; motor3_b = 0;
 motor4_a = 1; motor4_b = 0;
 break;
 case 8:
 motor1_a = 0; motor1_b = 1;
 motor2_a = 0; motor2_b = 1;
 motor3_a = 0; motor3_b = 1;
 motor4_a = 0; motor4_b = 1;
 break;
 case 4:
 motor1_a = 0; motor1_b = 0;
 motor2_a = 1; motor2_b = 0;
 motor3_a = 0; motor3_b = 0;
 motor4_a = 1; motor4_b = 0;
 break;
 case 6:
 motor1_a = 1; motor1_b = 0;
 motor2_a = 0; motor2_b = 0;
 motor3_a = 1; motor3_b = 0;
 motor4_a = 0; motor4_b = 0;
 break;
 case 7:
 stop_car();
 servo1_0d();
 break;
 case 1:
 stop_car();
 servo1_180d();
 break;
 case 3:
 stop_car();
 servo2_0d();
 break;
 case 9:
 stop_car();
 servo2_180d();
 break;

 default:
 PORTC = 0;
 }

}

void main() {
 lcd_init();
 lcd_cmd(_lcd_cursor_off);
 lcd_cmd(_lcd_clear);
 CMCON = 0x07;
 ADCON1 = 4;
 TRISA = 0b00111111;
 TRISC = 0b00000000;
 TRISD = 0b00010000;
 TRISE = 0b00000111;
 PORTC = 0; PORTD = 0;
 color_r = 1; color_g = 1; color_b = 1;

 while(1){
 noise_sense();
 gas_sense();

 move_car();
 }
}
