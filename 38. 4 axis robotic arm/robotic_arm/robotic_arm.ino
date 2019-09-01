#include <SoftwareSerial.h>
#include <Servo.h>
#include <LiquidCrystal.h>

byte led = 13;

#define servo1_MAX 65
#define servo1_MIN 5

#define servo2_MAX 175
#define servo2_MIN 75

#define servo3_MAX 95
#define servo3_MIN 5

#define servo4_MAX 175
#define servo4_MIN 5

#define wait 300


Servo servo1, servo2, servo3, servo4;
SoftwareSerial serial(7, 8);
LiquidCrystal lcd(A2, A3, A4, A5, A0, A1);

char rxd, bt, cp = 0;
byte angle[4] = {65, 180, 100, 100}; //initial stage
byte pos = 0;
bool flag1 = true;

void setup() {
  Serial.begin(9600);
  serial.begin(9600);
  
  servo1.attach(3);
  servo2.attach(4);
  servo3.attach(5);
  servo4.attach(6);
  
  lcd.begin(16, 2);
  lcd.clear();

  pinMode(led, OUTPUT);

  servo1.write(angle[0]);
  delay(1000);
  servo2.write(angle[1]);
  delay(1000);
  servo3.write(angle[2]);
  delay(1000);
  servo4.write(angle[3]);
  delay(1000);
}

void loop() {
  lcd.setCursor(0,0);
  lcd.print("S1: ");
  lcd.print(angle[0], DEC);
  lcd.print("  ");

  lcd.setCursor(9,0);
  lcd.print("S2: ");
  lcd.print(angle[1], DEC);
  lcd.print("  ");

  lcd.setCursor(0,1);
  lcd.print("S3: ");
  lcd.print(angle[2], DEC);
  lcd.print("  ");

  lcd.setCursor(9,1);
  lcd.print("S4: ");
  lcd.print(angle[3], DEC);
  lcd.print("  ");
  
  if(serial.available()){
    rxd = serial.read();

    if(rxd == '5') servo1_inc();
    if(rxd == '6') servo1_dec();

    if(rxd == '1') servo2_inc();
    if(rxd == '2') servo2_dec();

    if(rxd == '7') servo3_inc();
    if(rxd == '8') servo3_dec();

    if(rxd == '3') servo4_inc();
    if(rxd == '4') servo4_dec();
  }

  if(Serial.available()){
    bt = Serial.read();

    if(bt == 'a') servo1_inc();
    if(bt == 'b') servo1_dec();

    if(bt == 'c') servo2_inc();
    if(bt == 'd') servo2_dec();

    if(bt == 'e') servo3_inc();
    if(bt == 'f') servo3_dec();

    if(bt == 'g') servo4_inc();
    if(bt == 'h') servo4_dec(); 

    bt = 0;
  }
}

void servo1_inc(){
  angle[0]+=5;
  if(angle[0] >= servo1_MAX) angle[0] = servo1_MAX;
  servo1.write(angle[0]);
  delay(wait);
}

void servo1_dec(){
  angle[0]-=5;
  if(angle[0] <= servo1_MIN) angle[0] = servo1_MIN;
  servo1.write(angle[0]);
  delay(wait);
}

void servo2_inc(){
  angle[1]+=5;
  if(angle[1] >= servo2_MAX) angle[1] = servo2_MAX;
  servo2.write(angle[1]);
  delay(wait);
}

void servo2_dec(){
  angle[1]-=5;
  if(angle[1] <= servo2_MIN) angle[1] = servo2_MIN;
  servo2.write(angle[1]);
  delay(wait);
}

void servo3_inc(){
  angle[2]+=5;
  if(angle[2] >= servo3_MAX) angle[2] = servo3_MAX;
  servo3.write(angle[2]);
  delay(wait);
}

void servo3_dec(){
  angle[2]-=5;
  if(angle[2] <= servo3_MIN) angle[2] = servo3_MIN;
  servo3.write(angle[2]);
  delay(wait);
}

void servo4_inc(){
  angle[3]+=5;
  if(angle[3] >= servo4_MAX) angle[3] = servo4_MAX;
  servo4.write(angle[3]);
  delay(wait);
}

void servo4_dec(){
  angle[3]-=5;
  if(angle[3] <= servo4_MIN) angle[3] = servo4_MIN;
  servo4.write(angle[3]);
  delay(wait);
}
