#line 1 "E:/Electronics/Abrar's corner/Momin Bhai/Charger/Firmware/charger.c"






float batt_volt(){
 char adc; float volt;
 adc = adc_read(0);
 volt = adc / 17;
 return volt;
}

void charging(){
 float volt = batt_volt();
 while(volt < 13.5){
 volt = batt_volt();
  portb.f0  = 1;  portb.f1  = 0;
  portb.f2  = 0;  portc.f0  = 1;
  portb.f3  = 0;
 }
}

void main() {
 trisb = 0; trisc = 0;
 portb = 0; portc = 0;

 while(1){
 char delay;
 float volt = batt_volt();
 if(volt <= 11){
 volt = batt_volt();
  portb.f0  = 0;  portb.f1  = 1;
  portb.f2  = 0;  portc.f0  = 0;
  portb.f3  = 0;
 for(delay=0;delay<10;delay++){
 delay_ms(1000);
 }
 charging();
 }
 while(volt >= 13.5){
 volt = batt_volt();
  portb.f0  = 0;  portb.f1  = 0;
  portb.f2  = 1;  portc.f0  = 0;
  portb.f3  = 0;
 }
  portb.f0  = 0;  portb.f1  = 0;
  portb.f2  = 0;  portc.f0  = 0;
  portb.f3  = 1;
 }
}
