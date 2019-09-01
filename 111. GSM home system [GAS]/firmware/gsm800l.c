#include "GSM_sms.h"

#define gas_sensor porta.f2
#define buzz portc.f0
#define fire_led portc.f1
#define smoke_led portc.f3

char number[] = "01764180287";

unsigned short adc, temp;

short get_temp(){
  adc = adc_read(0);
  temp = (adc * 0.0197) * 100;
  return temp;
}

void safe(){
  fire_led = 0; smoke_led = 0;
  buzz = 0;
  send_sms(number,"Room safe. :-)");
}

void both(){
  send_sms(number,"Smoke and Fire both Detected.");
}

void main() {
  adcon1 = 0x04; 
  trisa.f2 = 1;
  trisC = 0x00; portc = 0x00;
  UART1_Init(9600);
  delay_ms(10000);

  while(1){
  buzz = 0;
   temp = get_temp();
     if(temp > 40){
       buzz = 1; fire_led = 1;
       send_sms(number,"Fire Detected.");
       while(temp > 40){
         temp = get_temp();
          if(!gas_sensor){
            both();
            while(!gas_sensor);
          }
       }
       safe();
     }
     if(!gas_sensor){
       buzz = 1; smoke_led = 1;
       send_sms(number,"Smoke Detected.");
       while(!gas_sensor){
         temp = get_temp();
         if(temp > 40){
           both();
           while(temp > 40){
             temp = get_temp();
           }
         }
       }
       safe();
     }
  }
}