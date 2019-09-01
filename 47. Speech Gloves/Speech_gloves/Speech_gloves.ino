#include <SD.h> 
#define SD_ChipSelectPin 4
#include <TMRpcm.h> 
#include <SPI.h>
#include <Wire.h>

TMRpcm tmrpcm;
const int MPU_addr=0x68; 

int f1, f2, f3, f4, f5;
int16_t AcX, AcY, AcZ, Tmp, GyX, GyY, GyZ;

void setup() {
  tmrpcm.speakerPin = 9;
  Serial.begin(9600);
//Gyro
  Wire.begin();
  Wire.beginTransmission(MPU_addr);
  Wire.write(0x6B);  
  Wire.write(0);    
  Wire.endTransmission(true);
//SD CARD 
  if (!SD.begin(SD_ChipSelectPin)) {  
    Serial.println("SD fail");  
    return;   
  }
  Serial.println("SD OK");
  tmrpcm.setVolume(5);
}

void loop() {
  read_mpu6050();
  read_flex();

  take_action(5, -25, f1, f2, f3, f4, f5, "salam.wav");

  delay(500);
}

void read_mpu6050(){
  Wire.beginTransmission(MPU_addr);
  Wire.write(0x3B); 
  Wire.endTransmission(false);
  Wire.requestFrom(MPU_addr, 14, true);  
  AcX=Wire.read()<<8|Wire.read(); 
  AcY=Wire.read()<<8|Wire.read(); 
  AcZ=Wire.read()<<8|Wire.read(); 
  Tmp=Wire.read()<<8|Wire.read(); 
  GyX=Wire.read()<<8|Wire.read(); 
  GyY=Wire.read()<<8|Wire.read();  
  GyZ=Wire.read()<<8|Wire.read();  

  AcX = map(AcX, -32768, 32767, -100, 100);
  AcY = map(AcY, -32768, 32767, -100, 100);
  AcZ = map(AcZ, -32768, 32767, -100, 100);
  
  Serial.print(" | X = "); Serial.print(AcX);
  Serial.print(" | Y = "); Serial.print(AcY);
  //Serial.print(" | Z = "); Serial.print(AcZ);
  delay(100);
}

void read_flex(){
  f1 = analogRead(A0);
  f2 = analogRead(A1);
  f3 = analogRead(A2);
  f4 = analogRead(A3);
  f5 = analogRead(A6);

  f1 = map(f1, 740, 930, 0, 100);
  f2 = map(f2, 710, 930, 0, 100);
  f3 = map(f3, 790, 980, 0, 100);
  f4 = map(f4, 740, 930, 0, 100);
  f5 = map(f5, 750, 930, 0, 100);
  
  Serial.print(" | f1 = "); Serial.print(f1);
  Serial.print(" | f2 = "); Serial.print(f2);
  Serial.print(" | f3 = "); Serial.print(f3);
  Serial.print(" | f4 = "); Serial.print(f4);
  Serial.print(" | f5 = "); Serial.println(f5);
  Serial.println();
  delay(100);
}

void take_action(int x, int y, int fl1, int fl2, int fl3, int fl4, int fl5, char *file){
  int x_min = x - 5, x_max = x + 5;
  int y_min = y - 5, y_max = y + 5;
  int f1_min = fl1 - 5, f1_max = fl1 + 5;
  int f2_min = fl2 - 5, f2_max = fl2 + 5;
  int f3_min = fl3 - 5, f3_max = fl3 + 5;
  int f4_min = fl4 - 5, f4_max = fl4 + 5;
  int f5_min = fl5 - 5, f5_max = fl5 + 5;

  if((AcX >= x_min && AcX <= x_max) && (AcY >= y_min && AcY <= y_max)){
    if((f1 >= f1_min && f1 <= f1_max) && (f2 >= f2_min && f2 <= f2_max) && (f3 >= f3_min && f3 <= f3_max) && (f4 >= f4_min && f4 <= f4_max) && (f5 >= f5_min && f5 <= f5_max)){
      tmrpcm.play(file);
      delay(3000);
    }
  }
}
