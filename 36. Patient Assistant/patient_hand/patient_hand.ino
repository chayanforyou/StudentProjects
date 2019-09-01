#include <Wire.h>
#include <VirtualWire.h>

const int led_pin = 13;
const int transmit_pin = 12;
const int MPU_addr=0x68; 
int16_t AcX, AcY, AcZ;

char cmd[3];

void setup(){
  Wire.begin();
  Wire.beginTransmission(MPU_addr);
  Wire.write(0x6B); 
  Wire.write(0);     
  Wire.endTransmission(true);

  vw_set_tx_pin(transmit_pin);
  vw_set_ptt_inverted(true); // Required for DR3100
  vw_setup(2000);       // Bits per sec
  pinMode(led_pin, OUTPUT);
  
  Serial.begin(9600);
}

void loop(){
  cmd[0] = 'B';
  digitalWrite(led_pin, HIGH);
  vw_send((uint8_t *)cmd, 2);
  vw_wait_tx(); 
  digitalWrite(led_pin, LOW);

  read_gyro();
}

void read_gyro(){
  Wire.beginTransmission(MPU_addr);
  Wire.write(0x3B);  
  Wire.endTransmission(false);
  Wire.requestFrom(MPU_addr, 14, true); 
  AcX=Wire.read()<<8|Wire.read();  
  AcY=Wire.read()<<8|Wire.read(); 
  AcZ=Wire.read()<<8|Wire.read(); 
  delay(1000);
  if(AcX > 10000) cmd[1] = '1';
  else if(AcX < -10000) cmd[1] = '2';
  
  else if(AcY > 10000) cmd[1] = '3';
  else if(AcY < -10000) cmd[1] = '4';
  else cmd[1] = '0';
  Serial.print("CMD: "); Serial.println(cmd);
}
