
sbit out at GPIO.b0;           //LED Pin
sbit out_dir at TRISIO.b0;

sbit DHT11 at GPIO.b1;         //DHT11 Sensor pin
sbit DHT11_dir at TRISIO.b1;
#include "DHT11.h"

#define temp_MIN 18

unsigned sensor;
char counter = 0, temp, duty;
bit output;

void InitTimer0(){
  OPTION_REG = 0x82;
  TMR0 = 6;
  INTCON = 0xA0;
}

void Interrupt(){
  if (TMR0IF_bit){
    TMR0IF_bit = 0;
    TMR0 = 6;
    if(output){
      counter++;
      if(counter == duty) out = 0;
      if(counter == 20) {counter = 0; out = 1;}
    }
    else{
      counter = 0;
      out = 0;
    }
  }
}

void main() {
  ANSEL = 0;
  CMCON = 7;
  InitTimer0();
  out_dir = 0;
  out = 0;

  while(1){
    sensor = DHT11_read();
    temp = sensor;
    if(temp >= temp_MIN) {
      output = 1;
      duty = temp - temp_MIN + 4;
    }
    else output = 0;
  }
}