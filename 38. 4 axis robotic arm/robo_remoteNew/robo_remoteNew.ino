#include <Wire.h>
#include <VirtualWire.h>

byte up_sw = 5;

const int led_pin = 13;
const int transmit_pin = 12;
const int MPU_addr=0x68; 
int16_t AcX, AcY, AcZ;

char cmd[3];
int flex;
bool autoSend = false;

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
  pinMode(up_sw, INPUT_PULLUP);
  
  Serial.begin(9600);
}

void loop(){
  cmd[0] = 'A';
  digitalWrite(led_pin, HIGH);
  vw_send((uint8_t *)cmd, 2);
  vw_wait_tx(); 
  digitalWrite(led_pin, LOW);

  flex = analogRead(A0);
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
    
  if(AcX > 5000 && AcX < 10000){
    if(digitalRead(up_sw) == HIGH) {
      cmd[1] = '1';
      autoSend = true;
    }
    //else cmd[1] = '7';
  }
  else if(AcX < -10000) {
    if(digitalRead(up_sw) == HIGH) cmd[1] = '2';
    else cmd[1] = '8';
    autoSend = false;
  }
  else if(AcY > 10000) {
    cmd[1] = '3';
    autoSend = false;
  }
  else if(AcY < -10000) {
    cmd[1] = '4';
    autoSend = false;
  }
  else if(flex > 550) {
    cmd[1] = '5';
    autoSend = false;
  }
  else if(flex < 400) {
    cmd[1] = '6';
    autoSend = false;
  }
  else cmd[1] = '0';
  
  if(autoSend == true) cmd[1] = '1';
  Serial.print("CMD: "); Serial.println(cmd);
}

