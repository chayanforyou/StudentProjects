unsigned char FlagReg;
unsigned char Count;
unsigned char TotalCount;
unsigned char nCount;
unsigned char nTotalCount;
sbit ZC at FlagReg.B0;

#define out portc.f4
#define up portc.f0
#define down portc.f3

void interrupt(){
     if (INTCON.INTF){          //INTF flag raised, so external interrupt occured
        ZC = 1;
        INTCON.INTF = 0;
     }
}

void system(){
  if (ZC){
    if (nCount > 0){
       out = 1;
       delay_us(250);
       out = 0;
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
   while(up==1){
     system();
   }
}

void speeddown(){
   Count--;
   if(Count==0)Count = 1;
   while(down==1){
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
        if(up==1)speedup();
        if(down==1)speeddown();
        system();
     }
}