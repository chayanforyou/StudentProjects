#line 1 "C:/Users/antor/Google Drive/Embedded Projects/Aminul Sir/8. IR robot car/firmware/DTMFcar.c"
#line 1 "c:/users/antor/google drive/embedded projects/aminul sir/8. ir robot car/firmware/define.h"
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
#line 3 "C:/Users/antor/Google Drive/Embedded Projects/Aminul Sir/8. IR robot car/firmware/DTMFcar.c"
char dtmf_str[] = "DTMF Signal: ";
char not_move[] = "not moving    ";
char move[] = "Moving ";
char up[] = "Front  ";
char down[] = "Back   ";
char fleft[] = "F.Left ";
char fright[] = "F.Right";
char bleft[] = "B.Left ";
char bright[] = "B.Right";

void stop_car(){
 lcd_out(1,1, not_move);
 motor1_a = 0; motor1_b = 0;
 motor2_a = 0; motor2_b = 0;
}

void moving_txt() {lcd_out(1,1, move);}

void move_car(){
 char DTMF = DTMF_read();
 lcd_out(2,1, dtmf_str);
 lcd_chr(2,14, DTMF + 48);

 switch(DTMF){

 case 2:
 if(IR_f){
 moving_txt();
 lcd_out(1,8, up);
 motor1_a = 1; motor1_b = 0;
 motor2_a = 1; motor2_b = 0;
 }
 else stop_car();
 break;
 case 8:
 if(IR_b){
 moving_txt();
 lcd_out(1,8, down);
 motor1_a = 0; motor1_b = 1;
 motor2_a = 0; motor2_b = 1;
 }
 else stop_car();
 break;
 case 4:
 moving_txt();
 lcd_out(1,8, fleft);
 motor1_a = 0; motor1_b = 0;
 motor2_a = 1; motor2_b = 0;
 break;
 case 6:
 moving_txt();
 lcd_out(1,8, fright);
 motor1_a = 1; motor1_b = 0;
 motor2_a = 0; motor2_b = 0;
 break;
 case 7:
 moving_txt();
 lcd_out(1,8, bleft);
 motor1_a = 0; motor1_b = 0;
 motor2_a = 0; motor2_b = 1;
 break;
 case 9:
 moving_txt();
 lcd_out(1,8, bright);
 motor1_a = 0; motor1_b = 1;
 motor2_a = 0; motor2_b = 0;
 break;

 default:
 stop_car();
 }

}

void main() {
 lcd_init();
 lcd_cmd(_lcd_cursor_off);
 lcd_cmd(_lcd_clear);
 ADCON1 = 7;
 TRISA = 0b11111111;
 TRISC = 0b01110000;
 TRISC7_bit = 1;
 PORTC = 0;

 while(1){
 move_car();
 }
}
