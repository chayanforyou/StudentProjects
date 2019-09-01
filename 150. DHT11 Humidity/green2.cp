#line 1 "C:/Users/antor/Google Drive/Embedded Projects/Rifat Bhai/DHT11 Humidity/green2.c"

sbit out at GPIO.b0;
sbit out_dir at TRISIO.b0;

sbit DHT11 at GPIO.b1;
sbit DHT11_dir at TRISIO.b1;
#line 1 "c:/users/antor/google drive/embedded projects/rifat bhai/dht11 humidity/dht11.h"

char _Check = 0;

void StartSignal(){
 DHT11_dir = 0;
 DHT11 = 0;
 delay_ms(18);
 DHT11 = 1;
 delay_us(30);
 DHT11_dir = 1;
}

void CheckResponse(){
 _Check = 0;
 delay_us(40);
 if(DHT11 == 0){
 delay_us(80);
 if(DHT11 == 1) _Check = 1;
 delay_us(40);
 }
}

char ReadData(){
 char i, j;
 for(j = 0; j < 8; j++){
 while(!DHT11);
 delay_us(30);
 if(DHT11 == 0)
 i&= ~(1 << (7 - j));
 else {
 i|= (1 << (7 - j));
 while(DHT11);
 }
 }
 return i;
}

int DHT11_read(){
 char Temp, RH, Sum;
 StartSignal();
 CheckResponse();
 if(_Check == 1){
 RH = ReadData();
 ReadData();
 Temp = ReadData();
 ReadData();
 Sum = ReadData();
 if(Sum == (RH + Temp)){
 return (RH << 8) + Temp;
 }
 }
}
#line 11 "C:/Users/antor/Google Drive/Embedded Projects/Rifat Bhai/DHT11 Humidity/green2.c"
unsigned sensor;
char counter = 0, temp, duty;
bit output;

void InitTimer0(){
 OPTION_REG = 0x82;
 TMR0 = 6;
 INTCON = 0xA0;
}

void Interrupt(){
 if (TMR0IF_bit){
 TMR0IF_bit = 0;
 TMR0 = 6;
 if(output){
 counter++;
 if(counter == duty) out = 0;
 if(counter == 20) {counter = 0; out = 1;}
 }
 else{
 counter = 0;
 out = 0;
 }
 }
}

void main() {
 ANSEL = 0;
 CMCON = 7;
 InitTimer0();
 out_dir = 0;
 out = 0;

 while(1){
 sensor = DHT11_read();
 temp = sensor;
 if(temp >=  18 ) {
 output = 1;
 duty = temp -  18  + 4;
 }
 else output = 0;
 }
}
