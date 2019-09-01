#line 1 "E:/Electronics/Abrar's corner/Raktim Sir/Relay Switching/firmware/relaySw.c"








int delay;

void delay_10s(){
 for(delay=0;delay<100;delay++){
 if(! portc.f3 )break;
 delay_ms(100);
 }
}

void main() {
 trisb = 0x00; portb = 0x00;
 trisc = 0x0F; portc = 0x00;

 while(1){
 while(! portc.f3 ){
 if( portc.f0 ){ portb.f0  = 1;}
 else{ portb.f0  = 0;}
 if( portc.f1 ){ portb.f1  = 1;}
 else{ portb.f1  = 0;}
 if( portc.f2 ){ portb.f2  = 1;}
 else{ portb.f2  = 0;}
 }
 while( portc.f3 ){
 delay_10s();
  portb.f0  = 1;  portb.f1  = 0;  portb.f2  = 0;
 delay_10s();
  portb.f0  = 0;  portb.f1  = 1;  portb.f2  = 0;
 delay_10s();
  portb.f0  = 0;  portb.f1  = 0;  portb.f2  = 1;
 }
 }
}
