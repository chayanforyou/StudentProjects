#line 1 "C:/Users/antor/Google Drive/Embedded Projects/Rifat Bhai/PIR LDR Lamp control/firmware/MotionLamp.c"




int adc;
int timer = 0;
bit enableFlag;

void main() {
 ADFM_bit = 1;
 ANSEL = 4;
 CMCON = 7;
 TRISIO = 0b00000110;
 GPIO = 0;
 enableFlag = 0;

 while(1){
  GP4_bit  = ~ GP4_bit ;
  GP0_bit  = ~ GP0_bit ;
 delay_ms(1000);
 }
}
