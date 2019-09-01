#line 1 "C:/Users/antor/Google Drive/Embedded Projects/Aminul Sir/5. 4 different power source switch/Charger/firmware/charger.c"





int adc = 0;
bit flag;

void main() {
 ANSEL = 0x01;
 TRISIO = 0x09;
 GPIO = 0;
 CMCON = 0x07;

 while(1){
 adc = adc_read(0);

 if(adc < 510){
  GP5_bit  = 1;  GP4_bit  = 0;  GP2_bit  = 0;
 flag = 1;
 }

 else if(adc >= 510 && adc <= 645){
  GP5_bit  = 0;  GP4_bit  = 1;  GP2_bit  = 0;
 }

 else if(adc > 645 && adc <= 710){
  GP5_bit  = 0;  GP4_bit  = 0;  GP2_bit  = 1;
 }

 else if(adc > 710){
  GP5_bit  = 0;  GP4_bit  = 0;  GP2_bit  = 1;
 flag = 0;
 }

 if(flag == 1)  GP1_bit  = 1;
 else  GP1_bit  = 0;
 }
}
