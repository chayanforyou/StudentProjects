
#define DHT11_1 RA2_bit
#define DHT11_dir_1 TRISA2_bit
#define DHT11_2 RA5_bit
#define DHT11_dir_2 TRISA5_bit

char _Check = 0;

void StartSignal0(){
    DHT11_dir_1 = 0;
    DHT11_1 = 0;
    delay_ms(18);
    DHT11_1 = 1;
    delay_us(30);
    DHT11_dir_1 = 1;
}

void StartSignal1(){
    DHT11_dir_2 = 0;
    DHT11_2 = 0;
    delay_ms(18);
    DHT11_2 = 1;
    delay_us(30);
    DHT11_dir_2 = 1;
}

void CheckResponse0(){
  _Check = 0;
  delay_us(40);
    if(DHT11_1 == 0){
      delay_us(80);
      if(DHT11_1 == 1) _Check = 1;
      delay_us(40);
    }
}

void CheckResponse1(){
  _Check = 0;
  delay_us(40);
   if(DHT11_2 == 0){
      delay_us(80);
      if(DHT11_2 == 1) _Check = 1;
      delay_us(40);
    }
}

char ReadData0(){
  char i, j;
  for(j = 0; j < 8; j++){
    while(!DHT11_1);
    delay_us(30);
      if(DHT11_1 == 0)
         i&= ~(1 << (7 - j));
      else {
        i|= (1 << (7 - j));
        while(DHT11_1);
      }
  }
  return i;
}

char ReadData1(){
  char i, j;
  for(j = 0; j < 8; j++){
    while(!DHT11_2);
    delay_us(30);
      if(DHT11_2 == 0)
         i&= ~(1 << (7 - j));
      else {
        i|= (1 << (7 - j));
        while(DHT11_2);
      }
  }
  return i;
}

int DHT11_read0(){
  char Temp, RH, Sum;
  StartSignal0();
  CheckResponse0();
  if(_Check == 1){
    RH = ReadData0();
    ReadData0();
    Temp = ReadData0();
    ReadData0();
    Sum = ReadData0();
    if(Sum == (RH + Temp)){
      return (RH << 8) + Temp;
    }
  }
}

int DHT11_read1(){
  char Temp, RH, Sum;
  StartSignal1();
  CheckResponse1();
  if(_Check == 1){
    RH = ReadData1();
    ReadData1();
    Temp = ReadData1();
    ReadData1();
    Sum = ReadData1();
    if(Sum == (RH + Temp)){
      return (RH << 8) + Temp;
    }
  }
}