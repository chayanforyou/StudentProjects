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

#define gas_adc 0
#define color_adc 1

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