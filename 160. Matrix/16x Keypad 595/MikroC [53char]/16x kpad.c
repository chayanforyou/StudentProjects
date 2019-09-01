#include "font.h"  //16x13 English FONT
sbit SH at Porta.B0;
sbit DS at Porta.B1;
sbit ST at Porta.B2;

const unsigned char string[] = "My name is Abrar Antor. I read in class 12.";
unsigned int total;
unsigned char temp[1400];

void fontLOAD(){
unsigned int count,scroll,adrs,count2 = 0;
total = sizeof(string) - 1;
total *= 26;
  for(scroll=0;scroll<53;scroll++){
      adrs = string[scroll] - 32;
      adrs = adrs * 26;
       for(count=adrs;count<adrs+26;count++){
         temp[count2] = font[count];
         count2++;
       }
    }
}

void main() {
unsigned int scroll, disp;
unsigned short speed, col;
ADCON1 = 0x07;
trisA = 0;trisB = 0;trisC = 0;trisD = 0xFF;
portA = 0;portB = 0;portC = 0;portD = 0;
fontLOAD();


  while(1){
   for(scroll=0;scroll<total;scroll+=2){
     for(speed=0;speed<15;speed++){
      disp = 0;
      SH = 1; SH = 0; DS = 1; ST = 1; ST = 0;
        for(col=0;col<32;col++){
         portb =~ temp[scroll + disp];
         disp++;
         portc =~ temp[scroll + disp];
         disp++;
         delay_us(100);
         SH = 1; SH = 0; DS = 0; ST = 1; ST = 0;
        }
     }
   }
  }
}