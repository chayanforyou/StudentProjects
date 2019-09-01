#include "define.h"

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
   int gas = adc_read(gas_adc);
   lcd_out(2,1, "Smoke:");
   int2str(2,7,gas);
   if(gas > 500) {buzzer = 1; delay_ms(100);}     //change here for GAS alarm
}

int get_color(){
   int color = adc_read(color_adc);
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
      case 2:                          //up
        motor1_a = 1; motor1_b = 0;
        motor2_a = 1; motor2_b = 0;
        motor3_a = 1; motor3_b = 0;
        motor4_a = 1; motor4_b = 0;
        break;
      case 8:                         //down
        motor1_a = 0; motor1_b = 1;
        motor2_a = 0; motor2_b = 1;
        motor3_a = 0; motor3_b = 1;
        motor4_a = 0; motor4_b = 1;
        break;
      case 4:                         //left
        motor1_a = 0; motor1_b = 0;
        motor2_a = 1; motor2_b = 0;
        motor3_a = 0; motor3_b = 0;
        motor4_a = 1; motor4_b = 0;
        break;
      case 6:                         //right
        motor1_a = 1; motor1_b = 0;
        motor2_a = 0; motor2_b = 0;
        motor3_a = 1; motor3_b = 0;
        motor4_a = 0; motor4_b = 0;
        break;
      case 7:
        stop_car();
        servo1_0d();                  //servo 1
        break;
      case 1:
        stop_car();
        servo1_180d();                //servo 1
        break;
      case 3:
        stop_car();
        servo2_0d();                  //servo 2
        break;
      case 9:
        stop_car();
        servo2_180d();                //servo 2
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
      //color_sense();
      move_car();
   }
}