#line 1 "C:/Users/antor.TWOBROTHERS-PC/Desktop/12f675 50Hz/50hz.c"



bit flag;

void InitTimer1(){
 T1CON = 0x01;
 TMR1IF_bit = 0;
 TMR1H = 0x3C;
 TMR1L = 0xB0;
 TMR1IE_bit = 1;
 INTCON = 0xC0;
}

void Interrupt(){
 if (TMR1IF_bit){
 TMR1IF_bit = 0;
 TMR1H = 0x3C;
 TMR1L = 0xB0;
 if(flag == 0){
  GP1_bit  = 0;
  GP0_bit  = 1;
 flag = 1;
 }
 else{
  GP0_bit  = 0;
  GP1_bit  = 1;
 flag = 0;
 }
 }
}

void main() {
 ANSEL = 0x00;
 TRISIO = 0x00;
 flag = 0;
 InitTimer1();

 while(1){

 }
}
