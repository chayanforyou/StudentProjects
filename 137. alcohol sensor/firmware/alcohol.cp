#line 1 "E:/Electronics/Abrar's corner/Raktim Sir/alcohol sensor/firmware/alcohol.c"





void main() {
 adcon1 = 0x07;
 trisa = 0x00; porta = 0x00;
 trisc = 0x08; portc = 0x00;

 while(1){
 if( portc.f3 ){
  portc.f4  = 1;  porta.f1  = 0;
 }
 else{
  portc.f4  = 0;  porta.f1  = 1;
 }
 }
}
