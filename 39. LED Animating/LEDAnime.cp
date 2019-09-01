#line 1 "C:/Users/antor/Google Drive/Embedded Projects/Tanvir Bhai/Projects/39. LED Animating/LEDAnime.c"





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
 delay_ms( 500 );
 }
 leds(0);
}

void right2left(){
 int x;
 unsigned long led, old_led = 0;
 for(x = 0; x < 20; x++){
 led = (524288 >> x) + old_led;
 leds(led);
 delay_ms( 100 );
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
 delay_ms( 100 );
 old_led = led;
 }
 leds(0);
}

void right2left_2(){
 int x;
 for(x = 0; x < 20; x++){
 leds(524288 >> x);
 delay_ms( 100 );
 }
 leds(0);
}

void left2right_2(){
 int x;
 for(x = 0; x < 20; x++){
 leds(1 << x);
 delay_ms( 100 );
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
