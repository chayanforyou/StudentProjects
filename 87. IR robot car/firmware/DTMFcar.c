#include "define.h"

char dtmf_str[] = "DTMF Signal: ";
char not_move[] = "not moving    ";
char move[] =   "Moving ";
char up[] =     "Front  ";
char down[] =   "Back   ";
char fleft[] =  "F.Left ";
char fright[] = "F.Right";
char bleft[] =  "B.Left ";
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

      case 2:                         //forward
        if(IR_f){
          moving_txt();
          lcd_out(1,8, up);
          motor1_a = 1; motor1_b = 0;
          motor2_a = 1; motor2_b = 0;
        }
        else stop_car();
        break;
      case 8:                         //backward
        if(IR_b){
          moving_txt();
          lcd_out(1,8, down);
          motor1_a = 0; motor1_b = 1;
          motor2_a = 0; motor2_b = 1;
        }
        else stop_car();
        break;
      case 4:                         //for-left
          moving_txt();
          lcd_out(1,8, fleft);
          motor1_a = 0; motor1_b = 0;
          motor2_a = 1; motor2_b = 0;
        break;
      case 6:                         //for-right
          moving_txt();
          lcd_out(1,8, fright);
          motor1_a = 1; motor1_b = 0;
          motor2_a = 0; motor2_b = 0;
        break;
      case 7:                         //Back-left
          moving_txt();
          lcd_out(1,8, bleft);
          motor1_a = 0; motor1_b = 0;
          motor2_a = 0; motor2_b = 1;
        break;
      case 9:                         //back-right
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