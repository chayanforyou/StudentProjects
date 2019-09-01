#include "GSM_sms.h"

#define gas_sensor porta.f2
#define buzz portc.f0

char number[] = "01932640587";  //set SMS receiver number here.

unsigned short adc, temp;

short get_temp(){
  adc = adc_read(0);
  temp = (adc * 0.0197) * 100;
  return temp;
}

void safe(){
  buzz = 0;
  send_sms(number,"Room safe. :-)");
}

void both(){
  send_sms(number,"LPG Gas and Fire both Detected.");
}

void reset_SIM(){
 char x;
  delay_ms(1000);
  UART1_Write_Text("AT+CPOWD=1");
   for(x=0;x<40;x++){
     buzz = 1;
     delay_ms(500);
     buzz = 0;
     delay_ms(500);
   }
}

void main() {
  adcon1 = 0x04; 
  trisa.f2 = 1; trisc.f0 = 0; portc = 0;
  UART1_Init(9600);
  reset_SIM();

  while(1){
   temp = get_temp();
     if(temp > 40){
       buzz = 1;
       send_sms(number,"Fire Detected.");
       while(temp > 30){
         temp = get_temp();
          if(!gas_sensor){
            both();
            while(!gas_sensor);
          }
       }
       safe();
     }
     if(!gas_sensor){
       buzz = 1;
       send_sms(number,"LPG Gas Detected.");
       while(!gas_sensor){
         temp = get_temp();
         if(temp > 40){
           both();
           while(temp > 30){
             temp = get_temp();
           }
         }
       }
       safe();
     }
  }
}