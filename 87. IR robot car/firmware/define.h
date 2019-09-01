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

sbit dtmf_std at RA5_bit;
sbit dtmf_q1 at RA0_bit;
sbit dtmf_q2 at RA1_bit;
sbit dtmf_q3 at RA2_bit;
sbit dtmf_q4 at RA3_bit;

sbit motor1_a at RC3_bit;
sbit motor1_b at RC2_bit;
sbit motor2_a at RC1_bit;
sbit motor2_b at RC0_bit;

sbit IR_f at RC6_bit;
sbit IR_b at RC7_bit;
sbit IR_l at RC4_bit;
sbit IR_r at RC5_bit;

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