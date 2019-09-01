
#define motor portc.f4
#define buzz porta.f1
#define sensor portc.f3

void main() {
  adcon1 = 0x07;
  trisa = 0x00; porta = 0x00;
  trisc = 0x08; portc = 0x00;
  
  while(1){
    if(sensor){
      motor = 1; buzz = 0;
    }
    else{
      motor = 0; buzz = 1;
    }
  }
}