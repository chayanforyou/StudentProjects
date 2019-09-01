#line 1 "C:/Users/antor.TWOBROTHERS-PC/Desktop/BT 2 LED/MyProject.c"





char rxd;

void all_on(){
  RB4_bit  = 1;  RB5_bit  = 1;  RB6_bit  = 1;  RB7_bit  = 1;
}

void all_off(){
  RB4_bit  = 0;  RB5_bit  = 0;  RB6_bit  = 0;  RB7_bit  = 0;
}

void main() {
 TRISB4_bit = 0;
 TRISB5_bit = 0;
 TRISB6_bit = 0;
 TRISB7_bit = 0;
 PORTB = 0;
 uart1_init(9600);

 while(1){
 rxd = uart1_read();
 if(rxd == '1') RB4_bit  = 1;
 if(rxd == '2') RB5_bit  = 1;
 if(rxd == '3') RB6_bit  = 1;
 if(rxd == '4') RB7_bit  = 1;

 if(rxd == 'A') RB4_bit  = 0;
 if(rxd == 'B') RB5_bit  = 0;
 if(rxd == 'C') RB6_bit  = 0;
 if(rxd == 'D') RB7_bit  = 0;

 if(rxd == '9')all_on();
 if(rxd == 'I')all_off();
 }
}
