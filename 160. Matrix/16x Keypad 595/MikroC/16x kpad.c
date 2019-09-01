#include "font.h"  //16x13 English FONT
sbit SH at Porta.B0;
sbit DS at Porta.B1;
sbit ST at Porta.B2;

const unsigned char string[] = "My name is Abrar Antor. I read in class 12.";
unsigned int total;
unsigned int scroll, disp, adrs, count, count2;
unsigned short speed, col;
unsigned char temp[64];

matrixSHOW(){
  for(speed=0;speed<10;speed++){
    SH = 1; SH = 0; DS = 1; ST = 1; ST = 0;
      for(col=0;col<32;col++){
        portb =~ temp[col];
        delay_us(300);
        SH = 1; SH = 0; DS = 0; ST = 1; ST = 0;
      }
  }
}

void main() {
ADCON1 = 0x07;
trisA = 0;trisB = 0;trisC = 0;trisD = 0xFF;
portA = 0;portB = 0;portC = 0;portD = 0;

  while(1){
    total = sizeof(string) - 1;
      for(scroll=0;scroll<total;scroll++){
        adrs = string[scroll] - 32;
        adrs = adrs * 26;
          for(count=adrs;count<adrs+26;count++){
            temp[count2] = font[count];
            count2++;
          }
      }
    matrixSHOW();
  }
}