#line 1 "D:/1. Electronics/Antor's corner/Raktim Sir/Old/FAN speed control/firmware/FSC001.c"
unsigned char FlagReg;
unsigned char Count;
unsigned char TotalCount;
unsigned char nCount;
unsigned char nTotalCount;
sbit ZC at FlagReg.B0;





void interrupt(){
 if (INTCON.INTF){
 ZC = 1;
 INTCON.INTF = 0;
 }
}

void system(){
 if (ZC){
 if (nCount > 0){
  portc.f4  = 1;
 delay_us(250);
  portc.f4  = 0;
 nCount--;
 }

 nTotalCount--;
 if (nTotalCount == 0){
 nTotalCount = TotalCount;
 nCount = Count;
 }
 ZC = 0;
 }
}

void speedup(){
 Count++;
 if(Count==10)Count = 9;
 while( portc.f0 ==1){
 system();
 }
}

void speeddown(){
 Count--;
 if(Count==0)Count = 1;
 while( portc.f3 ==1){
 system();
 }
}

void main() {
 PORTB = 0; TRISB = 0x01;
 TRISC = 0x09; PORTC = 0;
 OPTION_REG.INTEDG = 0;
 INTCON.INTF = 0; INTCON.INTE = 1;
 INTCON.GIE = 1;

 Count = 9;
 TotalCount = 10;
 nCount = Count;
 nTotalCount = TotalCount;

 while (1){
 if( portc.f0 ==1)speedup();
 if( portc.f3 ==1)speeddown();
 system();
 }
}
