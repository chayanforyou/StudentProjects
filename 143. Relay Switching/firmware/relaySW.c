#define rly1 portb.f0
#define rly2 portb.f1
#define rly3 portb.f2
#define butt1 portc.f0
#define butt2 portc.f1
#define butt3 portc.f2
#define mode portc.f3

int delay;

void delay_10s(){
  for(delay=0;delay<100;delay++){
    if(!mode)break;
    delay_ms(100);
  }
}

void main() {
  trisb = 0x00; portb = 0x00;
  trisc = 0x0F; portc = 0x00;
  
  while(1){
    while(!mode){
      if(butt1){rly1 = 1;}
      else{rly1 = 0;}
      if(butt2){rly2 = 1;}
      else{rly2 = 0;}
      if(butt3){rly3 = 1;}
      else{rly3 = 0;}
    }
    while(mode){
      delay_10s();
      rly1 = 1; rly2 = 0; rly3 = 0;
      delay_10s();
      rly1 = 0; rly2 = 1; rly3 = 0;
      delay_10s();
      rly1 = 0; rly2 = 0; rly3 = 1;
    }
  }
}