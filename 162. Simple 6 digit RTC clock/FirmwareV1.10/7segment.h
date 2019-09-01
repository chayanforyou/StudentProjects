#define segdata PORTB
#define digit1 portc.f0
#define digit2 portc.f1
#define digit3 portc.f2
#define digit4 portc.f5
#define digit5 portc.f6
#define digit6 portc.f7

void pic_init(){
  ADCON1 = 0x07; trisa = 0x3C;
  trisb = 0x00; portb = 0x00;
  trisc = 0x00; portc = 0x00;
  I2C_Init(100000);
  
}
//----------------------------------------

char cathode[] = {63, 6, 91, 79, 102, 109, 125, 7, 127, 111};

void display_clear(){
 digit1 = 0; digit2 = 0; digit3 = 0;
 digit4 = 0; digit5 = 0; digit6 = 0;
}

void show_hour(char x){
    unsigned short temp;
    temp = x / 10;
    segdata = cathode[temp];
    digit1 = 1; delay_ms(1); display_clear();
    temp = x % 10;
    segdata = cathode[temp];
    digit2 = 1; delay_ms(1); display_clear();
}

void show_minute(char x){
    unsigned short temp;
    temp = x / 10;
    segdata = cathode[temp];
    digit3 = 1; delay_ms(1); display_clear();
    temp = x % 10;
    segdata = cathode[temp];
    digit4 = 1; delay_ms(1); display_clear();
}

void show_second(char x){
    unsigned short temp;
    temp = x / 10;
    segdata = cathode[temp];
    digit5 = 1; delay_ms(1); display_clear();
    temp = x % 10;
    segdata = cathode[temp];
    digit6 = 1; delay_ms(1); display_clear();
}