
#define speed_1 500 //blink
#define speed_2 100
#define speed_3 1

void leds(unsigned long led){
  PORTB = led;
  PORTC = led >> 8;
  PORTA = led >> 16;
}

void blink(int num){
  int x;
  long led = 0;
  for(x = 0; x < num; x++){
    led = ~led;
    leds(led);
    delay_ms(speed_1);
  }
  leds(0);
}

void right2left(){
  int x;
  unsigned long led, old_led = 0;
  for(x = 0; x < 20; x++){
    led = (524288 >> x) + old_led;
    leds(led);
    delay_ms(speed_2);
    old_led = led;
  }
  leds(0);
}

void left2right(){
  int x;
  unsigned long led, old_led = 0;
  for(x = 0; x < 20; x++){
    led = (1 << x) + old_led;
    leds(led);
    delay_ms(speed_2);
    old_led = led;
  }
  leds(0);
}

void right2left_2(){
  int x;
  for(x = 0; x < 20; x++){
    leds(524288 >> x);
    delay_ms(speed_2);
  }
  leds(0);
}

void left2right_2(){
  int x;
  for(x = 0; x < 20; x++){
    leds(1 << x);
    delay_ms(speed_2);
  }
  leds(0);
}

void main() {
  ADCON1 = 7;
  TRISA = 0x00;
  TRISB = 0x00;
  TRISC = 0x00;
  
  while(1){
    blink(10);
    right2left();
    blink(5);
    left2right();
    blink(5);
    right2left_2();
    blink(5);
    left2right_2();
    blink(5);
  }
}