#define ch_led portb.f0
#define lo_led portb.f1
#define hi_led portb.f2
#define normal portb.f3
#define rly portc.f0

float batt_volt(){
 char adc; float volt;
  adc = adc_read(0);
  volt = adc / 17; //get 15v maximum
  return volt;
}

void charging(){
 float volt = batt_volt();
  while(volt < 13.5){
    volt = batt_volt();
    ch_led = 1; lo_led = 0;
    hi_led = 0; rly = 1;
    normal = 0;
  }
}

void main() {
  trisb = 0; trisc = 0;
  portb = 0; portc = 0;
   
  while(1){
   char delay;
    float volt = batt_volt();
     if(volt <= 11){  //low Batt
       volt = batt_volt();
       ch_led = 0; lo_led = 1; 
       hi_led = 0; rly = 0;
       normal = 0;
        for(delay=0;delay<10;delay++){  //count down to Charge
          delay_ms(1000);
        }
        charging();
     }
     while(volt >= 13.5){  //high Batt
       volt = batt_volt();
       ch_led = 0; lo_led = 0;
       hi_led = 1; rly = 0;
       normal = 0;
     }
    ch_led = 0; lo_led = 0;
    hi_led = 0; rly = 0;
    normal = 1;
  }
}