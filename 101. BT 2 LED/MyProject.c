#define ch_1 RB4_bit
#define ch_2 RB5_bit
#define ch_3 RB6_bit
#define ch_4 RB7_bit

char rxd;

void all_on(){
  ch_1 = 1; ch_2 = 1; ch_3 = 1; ch_4 = 1;
}

void all_off(){
  ch_1 = 0; ch_2 = 0; ch_3 = 0; ch_4 = 0;
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
    if(rxd == '1')ch_1 = 1;
    if(rxd == '2')ch_2 = 1;
    if(rxd == '3')ch_3 = 1;
    if(rxd == '4')ch_4 = 1;
    
    if(rxd == 'A')ch_1 = 0;
    if(rxd == 'B')ch_2 = 0;
    if(rxd == 'C')ch_3 = 0;
    if(rxd == 'D')ch_4 = 0;
    
    if(rxd == '9')all_on();
    if(rxd == 'I')all_off();
  }
}